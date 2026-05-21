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
#include <string.h>
#include <cmath>
#include <stdlib.h>

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

static GUID GUID_Cypress = {0xAE18AA60, 0x7F6A, 0x11d4, 0x97, 0xDD, 0x00, 0x01, 0x02, 0x29, 0xB9, 0x59};
//static GUID GUID_KNJN_FX2 = {0x0EFA2C93, 0x0C7B, 0x454F, 0x94, 0x03, 0xD6, 0x38, 0xF6, 0xC3, 0x7E, 0x65};

#define BulkOutPipe0 USBDevice->EndPoints[1]
#define BulkInPipe1  USBDevice->EndPoints[2]
#define BulkOutPipe2 USBDevice->EndPoints[3]
#define BulkOutPipe3 USBDevice->EndPoints[4]
#define BulkInPipe4  USBDevice->EndPoints[5]
#define BulkInPipe5  USBDevice->EndPoints[6]

void pack32(unsigned char* buf, unsigned int val) {
	buf[0] = val & 0xFF;
	buf[1] = (val >> 8) & 0xFF;
	buf[2] = (val >> 16) & 0xFF;
	buf[3] = (val >> 24) & 0xFF;
}

///////////////////////////////////////////////////
// Specify the sine output frequency in Hertz in the first argument
// and the DDS sine output will be set
template <typename T>
int extract_arg(const char* arg, const char* prefix, T* out_val, T (*converter)(const char*)) {
	int prefix_len = strlen(prefix);
	if (strncmp(arg, prefix, prefix_len) == 0 && arg[prefix_len] == '=') {
		*out_val = converter(arg + prefix_len + 1);
		return 1;
	}
	return 0;
}

int main(int argc,char *argv[])
{
	double freq1 = 1250;				// By default, we want a 1250 Hz sine wave on DDS 1
	double freq2 = 2500;				// and a 2500 Hz sine wave on DDS 2
	double phase1 = 0, phase2 = 0;		// Phase offset in degrees
	double amp1 = 100, amp2 = 100;		// Amplitude in percentage
	
	if (argc <= 1) printf("Usage: DDSConsole.exe freq=1000 phase1=90 amp2=50\nUsing defaults.\n\n");

	for (int i = 1; i < argc; i++) {
		char* arg = argv[i];
		if (extract_arg(arg, "freq1", &freq1, atof)) {
			continue;
		} else if (extract_arg(arg, "freq2", &freq2, atof)) {
			continue;
		} else if (extract_arg(arg, "phase1", &phase1, atof)) {
			continue;
		} else if (extract_arg(arg, "phase2", &phase2, atof)) {
			continue;
		} else if (extract_arg(arg, "amp1", &amp1, atof)) {
			continue;
		} else if (extract_arg(arg, "amp2", &amp2, atof)) {
			continue;
		} else if (extract_arg(arg, "freq", &freq1, atof)) {
			freq2 = freq1;
			continue;
		} else if (extract_arg(arg, "phase", &phase1, atof)) {
			phase2 = phase1;
			continue;
		} else if (extract_arg(arg, "amp", &amp1, atof)) {
			amp2 = amp1;
			continue;
		} else {
			printf("Unknown argument: %s\n", arg);
		}
	}

	double oscillator = 151515000.0;		// Our DDS is clocked by a 151.515MHz PLL (75.7575MHz * 2)
	double DDS_acc_range = 4294967296.0;	// and is using a 32-bits DDS accumulator 

	unsigned int DDS1_acc_inc = (unsigned int)(freq1 / oscillator * DDS_acc_range);
	unsigned int DDS2_acc_inc = (unsigned int)(freq2 / oscillator * DDS_acc_range);
	
	unsigned int DDS1_phase_off = (unsigned int)(fmod(phase1, 360.0) / 360.0 * DDS_acc_range);
	unsigned int DDS2_phase_off = (unsigned int)(fmod(phase2, 360.0) / 360.0 * DDS_acc_range);

	if (amp1 < 0.0) amp1 = 0; if (amp1 > 100.0) amp1 = 100.0;
	if (amp2 < 0.0) amp2 = 0; if (amp2 > 100.0) amp2 = 100.0;
	unsigned int DDS1_amp_val = (unsigned int)((amp1 / 100.0) * 65535.0);
	unsigned int DDS2_amp_val = (unsigned int)((amp2 / 100.0) * 65535.0);

	unsigned char payload[24];
	pack32(&payload[0], DDS1_acc_inc);
	pack32(&payload[4], DDS1_phase_off);
	pack32(&payload[8], DDS1_amp_val);
	pack32(&payload[12], DDS2_acc_inc);
	pack32(&payload[16], DDS2_phase_off);
	pack32(&payload[20], DDS2_amp_val);

	CCyUSBDevice *USBDevice = new CCyUSBDevice(NULL, GUID_Cypress);
	if (USBDevice->DeviceCount() > 0 && BulkOutPipe2 != NULL) {
		LONG len = 24;
		BulkOutPipe2->XferData(payload, len); // FPGA securely receives both channels
		
		printf("DDS 1: freq=%.1f Hz, phase=%.1f deg, amp=%.1f %%\n", freq1, phase1, amp1);
		printf("DDS 2: freq=%.1f Hz, phase=%.1f deg, amp=%.1f %%\n", freq2, phase2, amp2);
	} else {
		printf("Error: USB Device not connected or missing endpoint!\n");
	}
	delete USBDevice;

	return 0;
}
