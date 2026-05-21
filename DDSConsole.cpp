// Sample code for FX2 interface
// (c) fpga4fun.com KNJN LLC - 2007 - 2015

// This example uses the CyUSB driver
// Tested with MSVC 6.0

// Make sure you use the multithreaded runtime library 
// (in MSVC6.0, go to Project, Settings, C/C++, Code Generation, Use run-time library - Multithreaded)

#define _CRT_SECURE_NO_WARNINGS // Disable deprecation error for legacy vsprintf

///////////////////////////////////////////////////
#include <windows.h>
#include <assert.h>
#include <stdio.h>
#include <stdarg.h>
//#include <stdlib.h>

#include "CyAPI.h"
#pragma comment(lib, "CyAPI.lib")       // this links CyAPI.lib statically to the project
#pragma comment(lib, "legacy_stdio_definitions.lib") // fixes _sprintf unresolved external in modern MSVC

// Provide the missing legacy _sprintf function required by the old CyAPI.lib
#if _MSC_VER >= 1900
extern "C" int legacy_sprintf(char* buffer, const char* format, ...) {
	int result;
	va_list args;
	va_start(args, format);
	result = vsprintf(buffer, format, args);
	va_end(args);
	return result;
}
#pragma comment(linker, "/alternatename:_sprintf=_legacy_sprintf")
#endif

static GUID GUID_Cypress = { 0xAE18AA60, 0x7F6A, 0x11d4, 0x97, 0xDD, 0x00, 0x01, 0x02, 0x29, 0xB9, 0x59 };
//static GUID GUID_KNJN_FX2 = {0x0EFA2C93, 0x0C7B, 0x454F, 0x94, 0x03, 0xD6, 0x38, 0xF6, 0xC3, 0x7E, 0x65};

#define BulkOutPipe0 USBDevice->EndPoints[1]
#define BulkInPipe1  USBDevice->EndPoints[2]
#define BulkOutPipe2 USBDevice->EndPoints[3]
#define BulkOutPipe3 USBDevice->EndPoints[4]
#define BulkInPipe4  USBDevice->EndPoints[5]
#define BulkInPipe5  USBDevice->EndPoints[6]

///////////////////////////////////////////////////
// Specify the sine output frequency in Hertz in the first argument
// and the DDS sine output will be set

void main(int argc, char* argv[]) {
	double freq = 1250;					// By default, we want a 1.25KHz sine wave
	if (argc <= 1 || atof(argv[1]) == 0.0) printf("No output frequency specified - using default.\n"); else freq = atof(argv[1]);

	int oscillator = 75757500;			// Our DDS is clocked by a 75.7575MHz oscilator
	double DDS_acc_range = 0x100000000;	// and is using a 32-bits DDS accumulator (we could put "1<<32" here... if only the x86 architecture didn't have a bug when shifting by 32 bits)

	int DDS_acc_inc = int(freq / oscillator * DDS_acc_range);		// We calculate the DSS accumulator increment
	LONG len = sizeof(DDS_acc_inc);								// which must be 4 bytes long (32 bits) to match the hardware
	assert(len == 4);

	CCyUSBDevice* USBDevice = new CCyUSBDevice(NULL, GUID_Cypress);
	BulkOutPipe2->XferData((unsigned char*)&DDS_acc_inc, len);	// send to FPGA
	delete USBDevice;

	printf("Output frequency set at %1.3fKHz\n", freq / 1000);
}
