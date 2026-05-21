using System;
using System.Drawing;
using System.Windows.Forms;
using System.Threading;
using System.Collections.Generic;
using CyUSB; // The Cypress .NET library namespace

namespace SaxoQGUI
{
    public partial class Form1 : Form
    {
        USBDeviceList usbDevices;
        CyUSBDevice myDevice;

        // System Constants
        private const double SystemClockMhz = 75.7575;
        private const double SystemClockHz = 75757500.0;
        private const double DdsAccRange = 4294967296.0; // 2^32

        // DDS UI Elements
        ComboBox cbDdsTarget;
        TextBox txtDdsFreq;
        Button btnSetDdsFreq;
        TextBox txtDdsPhase;
        Button btnSetDdsPhase;
        TextBox txtDdsAmp;
        Button btnSetDdsAmp;
        Label lblStatus;

        // Scope UI Elements
        ComboBox cbMode;
        ComboBox cbEdge;
        ComboBox cbTimebase;
        ComboBox cbYAxis;
        TrackBar tbThreshold;
        Button btnRun;
        Label lblRunState;
        PictureBox picScope;

        bool isRunning = false;
        Thread runThread;

        byte[] lastWaveData = null;
        double lastNsPerSample = 16.7;
        int lastFreq = 0;

        private uint dds1_acc = 0;
        private uint dds2_acc = 0;

        public Form1()
        {
            // This is the ONLY constructor Form1 should have.
            // It links the code to your designer file.
            InitializeComponent();

            // 1. Setup the UI programmatically
            SetupUI();

            // 2. Initialize the USB Device List
            usbDevices = new USBDeviceList(CyConst.DEVICES_CYUSB);

            // 3. Hook up event handlers so the app knows if you unplug/replug the device
            usbDevices.DeviceAttached += new EventHandler(usbDevices_DeviceAttached);
            usbDevices.DeviceRemoved += new EventHandler(usbDevices_DeviceRemoved);

            // 4. Attempt initial connection
            ConnectToDevice();
        }

        protected override void OnFormClosing(FormClosingEventArgs e)
        {
            isRunning = false;
            if (runThread != null && runThread.IsAlive)
            {
                runThread.Join(500); // Allow thread to exit cleanly
            }
            base.OnFormClosing(e);
        }

        private void SetupUI()
        {
            this.Text = "SaxoQ Controller (4-CH Scope / 2-CH DDS)";
            this.Size = new Size(850, 680);
            this.FormBorderStyle = FormBorderStyle.FixedDialog;
            this.MaximizeBox = false;

            // --- DDS Controls ---
            GroupBox grpDDS = new GroupBox() { Text = "DDS Control", Location = new Point(10, 10), Size = new Size(280, 150) };
            this.Controls.Add(grpDDS);

            Label lblTarget = new Label() { Text = "Target:", Location = new Point(10, 25), AutoSize = true };
            cbDdsTarget = new ComboBox() { Location = new Point(80, 22), Width = 100, DropDownStyle = ComboBoxStyle.DropDownList };
            cbDdsTarget.Items.AddRange(new object[] { "DDS 1", "DDS 2", "Both" });
            cbDdsTarget.SelectedIndex = 0;
            grpDDS.Controls.Add(lblTarget);
            grpDDS.Controls.Add(cbDdsTarget);

            Label lblFreq = new Label() { Text = "Freq (Hz):", Location = new Point(10, 55), AutoSize = true };
            txtDdsFreq = new TextBox() { Text = "1000", Location = new Point(80, 52), Width = 100 };
            btnSetDdsFreq = new Button() { Text = "Set", Location = new Point(190, 50), Width = 60, Height = 25 };
            btnSetDdsFreq.Click += BtnSetDdsFreq_Click;
            grpDDS.Controls.Add(lblFreq);
            grpDDS.Controls.Add(txtDdsFreq);
            grpDDS.Controls.Add(btnSetDdsFreq);

            Label lblPhase = new Label() { Text = "Phase (°):", Location = new Point(10, 85), AutoSize = true };
            txtDdsPhase = new TextBox() { Text = "0", Location = new Point(80, 82), Width = 100 };
            btnSetDdsPhase = new Button() { Text = "Set", Location = new Point(190, 80), Width = 60, Height = 25 };
            btnSetDdsPhase.Click += BtnSetDdsPhase_Click;
            grpDDS.Controls.Add(lblPhase);
            grpDDS.Controls.Add(txtDdsPhase);
            grpDDS.Controls.Add(btnSetDdsPhase);

            Label lblAmp = new Label() { Text = "Amp (%):", Location = new Point(10, 115), AutoSize = true };
            txtDdsAmp = new TextBox() { Text = "100", Location = new Point(80, 112), Width = 100 };
            btnSetDdsAmp = new Button() { Text = "Set", Location = new Point(190, 110), Width = 60, Height = 25 };
            btnSetDdsAmp.Click += BtnSetDdsAmp_Click;
            grpDDS.Controls.Add(lblAmp);
            grpDDS.Controls.Add(txtDdsAmp);
            grpDDS.Controls.Add(btnSetDdsAmp);

            // --- Scope Controls ---
            GroupBox grpScope = new GroupBox() { Text = "Scope Settings", Location = new Point(300, 10), Size = new Size(520, 150) };
            grpScope.Enabled = false; // Temporarily disabled
            this.Controls.Add(grpScope);

            Label lblMode = new Label() { Text = "Mode:", Location = new Point(10, 25), AutoSize = true };
            cbMode = new ComboBox() { Location = new Point(50, 22), Width = 80, DropDownStyle = ComboBoxStyle.DropDownList };
            cbMode.Items.AddRange(new object[] { "Auto", "Normal", "Single" });
            cbMode.SelectedIndex = 0;
            grpScope.Controls.Add(lblMode);
            grpScope.Controls.Add(cbMode);

            Label lblEdge = new Label() { Text = "Edge:", Location = new Point(140, 25), AutoSize = true };
            cbEdge = new ComboBox() { Location = new Point(180, 22), Width = 80, DropDownStyle = ComboBoxStyle.DropDownList };
            cbEdge.Items.AddRange(new object[] { "Rising", "Falling" });
            cbEdge.SelectedIndex = 0;
            grpScope.Controls.Add(lblEdge);
            grpScope.Controls.Add(cbEdge);

            Label lblTB = new Label() { Text = "Timebase:", Location = new Point(270, 25), AutoSize = true };
            cbTimebase = new ComboBox() { Location = new Point(330, 22), Width = 80, DropDownStyle = ComboBoxStyle.DropDownList };
            cbTimebase.Items.AddRange(new object[] { 
                "16.7 ns", "33.3 ns", "50 ns", "100 ns", "200 ns", "500 ns", 
                "1 us", "2 us", "5 us", "10 us", "20 us", "50 us", "100 us",
                "200 us", "500 us", "1 ms", "2 ms", "5 ms" });
            cbTimebase.SelectedIndex = 0;
            cbTimebase.SelectedIndexChanged += (s, e) => picScope.Invalidate();
            grpScope.Controls.Add(lblTB);
            grpScope.Controls.Add(cbTimebase);

            Label lblY = new Label() { Text = "Y-Axis:", Location = new Point(420, 25), AutoSize = true };
            cbYAxis = new ComboBox() { Location = new Point(470, 22), Width = 80, DropDownStyle = ComboBoxStyle.DropDownList };
            cbYAxis.Items.AddRange(new object[] { "ADC", "Voltage (1x)", "Voltage (10x)" });
            cbYAxis.SelectedIndex = 0;
            cbYAxis.SelectedIndexChanged += (s, e) => picScope.Invalidate();
            grpScope.Controls.Add(lblY);
            grpScope.Controls.Add(cbYAxis);
            
            Label lblTrig = new Label() { Text = "Threshold:", Location = new Point(10, 60), AutoSize = true };
            tbThreshold = new TrackBar() { Location = new Point(70, 55), Width = 190, Minimum = 0, Maximum = 255, Value = 128, TickFrequency = 16 };
            tbThreshold.ValueChanged += (s, e) => picScope.Invalidate();
            grpScope.Controls.Add(lblTrig);
            grpScope.Controls.Add(tbThreshold);

            btnRun = new Button() { Text = "Run", Location = new Point(330, 60), Width = 80, Height = 25 };
            btnRun.Click += btnRun_Click;
            grpScope.Controls.Add(btnRun);

            lblRunState = new Label() { Text = "Stopped", Location = new Point(420, 65), ForeColor = Color.Red, AutoSize = true, Font = new Font(this.Font, FontStyle.Bold) };
            grpScope.Controls.Add(lblRunState);

            // --- Plot Area ---
            picScope = new PictureBox() { Location = new Point(10, 170), Size = new Size(810, 430), BackColor = Color.Black };
            picScope.Paint += PicScope_Paint;
            this.Controls.Add(picScope);

            // --- Status ---
            lblStatus = new Label() { Text = "Ready", Location = new Point(10, 610), Width = 800 };
            this.Controls.Add(lblStatus);
            
            // Generate dummy data for initial view layout
            lastWaveData = new byte[1024];
            for (int i = 0; i < 1024; i++) lastWaveData[i] = (byte)(128 + 50 * Math.Sin(i * 0.1));
        }

        private void ConnectToDevice()
        {
            if (this.InvokeRequired)
            {
                this.Invoke(new MethodInvoker(ConnectToDevice));
                return;
            }

            if (usbDevices.Count > 0)
            {
                myDevice = usbDevices[0] as CyUSBDevice;
                if (myDevice != null)
                {
                    lblStatus.Text = $"Connected to {myDevice.FriendlyName}";
                    lblStatus.ForeColor = Color.Green;
                }
            }
            else
            {
                myDevice = null;
                isRunning = false; // Gracefully stop the thread
                if (btnRun != null) btnRun.Text = "Run";
                if (lblRunState != null)
                {
                    lblRunState.Text = "Stopped";
                    lblRunState.ForeColor = Color.Red;
                }
                lblStatus.Text = "Disconnected. Please plug in the device.";
                lblStatus.ForeColor = Color.Red;
            }
        }

        private void SendDdsCommand(uint targetChannel, uint data)
        {
            if (myDevice == null)
            {
                MessageBox.Show("USB Device not connected!");
                return;
            }

            if (targetChannel == 1 || targetChannel == 3) dds1_acc = data;
            if (targetChannel == 2 || targetChannel == 3) dds2_acc = data;

            byte[] payload = new byte[8];
            // DDS1
            payload[0] = (byte)(dds1_acc & 0xFF);
            payload[1] = (byte)((dds1_acc >> 8) & 0xFF);
            payload[2] = (byte)((dds1_acc >> 16) & 0xFF);
            payload[3] = (byte)((dds1_acc >> 24) & 0xFF);
            // DDS2
            payload[4] = (byte)(dds2_acc & 0xFF);
            payload[5] = (byte)((dds2_acc >> 8) & 0xFF);
            payload[6] = (byte)((dds2_acc >> 16) & 0xFF);
            payload[7] = (byte)((dds2_acc >> 24) & 0xFF);

            int len = payload.Length;

            // Explicitly address EP2 OUT (FIFO2) which the FPGA is hardcoded to listen to.
            // EndPoints[3] index can vary depending on the CyUSB version and descriptors.
            CyBulkEndPoint bulkOut = myDevice.EndPointOf(0x02) as CyBulkEndPoint;

            if (bulkOut != null)
            {
                bool success = bulkOut.XferData(ref payload, ref len);
                if (!success)
                    lblStatus.Text = "Transfer Failed! Check endpoint address.";
            }
            else
            {
                lblStatus.Text = "Error: EP2 OUT (0x02) is missing. Check firmware.";
            }
        }

        private uint GetTargetChannel()
        {
            if (cbDdsTarget.SelectedItem != null)
            {
                string target = cbDdsTarget.SelectedItem.ToString();
                if (target == "DDS 2") return 2;
                if (target == "Both") return 3;
            }
            return 1;
        }

        private void BtnSetDdsFreq_Click(object sender, EventArgs e)
        {
            if (double.TryParse(txtDdsFreq.Text, out double freq))
            {
                uint acc_inc = (uint)((freq / SystemClockHz) * DdsAccRange);
                uint target = GetTargetChannel();
                
                SendDdsCommand(target, acc_inc);
                lblStatus.Text = $"Success: Set Frequency to {freq} Hz on {cbDdsTarget.Text}";
            }
        }

        private void BtnSetDdsPhase_Click(object sender, EventArgs e)
        {
            MessageBox.Show("Phase adjustments are disabled in the 4-byte protocol.", "Not Supported");
        }

        private void BtnSetDdsAmp_Click(object sender, EventArgs e)
        {
            MessageBox.Show("Amplitude adjustments are disabled in the 4-byte protocol.", "Not Supported");
        }

        void usbDevices_DeviceAttached(object sender, EventArgs e) { ConnectToDevice(); }
        void usbDevices_DeviceRemoved(object sender, EventArgs e) { ConnectToDevice(); }

        private void btnRun_Click(object sender, EventArgs e)
        {
            if (isRunning)
            {
                isRunning = false;
                btnRun.Text = "Run";
                lblRunState.Text = "Stopped";
                lblRunState.ForeColor = Color.Red;
            }
            else
            {
                if (myDevice == null)
                {
                    MessageBox.Show("USB Device not connected!");
                    return;
                }
                isRunning = true;
                btnRun.Text = "Stop";
                lblRunState.Text = "Running";
                lblRunState.ForeColor = Color.Green;
                runThread = new Thread(RunLoop);
                runThread.IsBackground = true;
                runThread.Start();
            }
        }

        private void RunLoop()
        {
            Dictionary<string, int> tbMap = new Dictionary<string, int> {
                {"16.7 ns", 0}, {"33.3 ns", 1}, {"50 ns", 2}, {"100 ns", 5},
                {"200 ns", 11}, {"500 ns", 29}, {"1 us", 59}, {"2 us", 119},
                {"5 us", 299}, {"10 us", 599}, {"20 us", 1199}, {"50 us", 2999},
                {"100 us", 5999}, {"200 us", 11999}, {"500 us", 29999},
                {"1 ms", 59999}, {"2 ms", 119999}, {"5 ms", 299999}
            };

            int captureSize = 1024;
            int expectedBytes = captureSize + 4;

            while (isRunning && myDevice != null)
            {
                int threshold = 128;
                string modeStr = "";
                string edgeStr = "";
                string timebaseStr = "";
                
                try
                {
                    this.Invoke((MethodInvoker)delegate {
                        threshold = tbThreshold.Value;
                        modeStr = cbMode.Text;
                        edgeStr = cbEdge.Text;
                        timebaseStr = cbTimebase.Text;
                    });
                }
                catch (Exception) { break; } // Triggers if Form is closed while running

                int autoTrigger = modeStr == "Auto" ? 1 : 0;
                int edgeVal = edgeStr == "Falling" ? 1 : 0;
                byte configByte = (byte)(edgeVal | (autoTrigger << 1));

                int tbVal = 0;
                if (tbMap.ContainsKey(timebaseStr)) tbVal = tbMap[timebaseStr];

                byte tbLow = (byte)(tbVal & 0xFF);
                byte tbMid = (byte)((tbVal >> 8) & 0xFF);
                byte tbHigh = (byte)((tbVal >> 16) & 0xFF);

                double nsPerSample = (tbVal + 1) * (1000.0 / SystemClockMhz);

                // Send configurations over bulk OUT stream
                byte[] configData = new byte[] { (byte)threshold, configByte, tbLow, tbMid, tbHigh };
                int lenOut = configData.Length;
                
                CyBulkEndPoint bulkOut = myDevice.BulkOutEndPt;
                if (bulkOut != null)
                {
                    bulkOut.XferData(ref configData, ref lenOut);
                }

                CyBulkEndPoint bulkIn = myDevice.BulkInEndPt;
                if (bulkIn != null)
                {
                    byte[] inData = new byte[expectedBytes];
                    int lenIn = expectedBytes;
                    // Cypress API requires setting the timeout
                    bulkIn.TimeOut = 500;
                    bool bResult = bulkIn.XferData(ref inData, ref lenIn);

                    if (bResult && lenIn == expectedBytes)
                    {
                        byte[] waveData = new byte[captureSize];
                        Array.Copy(inData, 0, waveData, 0, captureSize);
                        
                        int freqVal = BitConverter.ToInt32(inData, captureSize);

                        try
                        {
                            this.Invoke((MethodInvoker)delegate {
                                lastWaveData = waveData;
                                lastNsPerSample = nsPerSample;
                                lastFreq = freqVal;
                                picScope.Invalidate();

                                if (modeStr == "Single")
                                {
                                    isRunning = false;
                                    btnRun.Text = "Run";
                                    lblRunState.Text = "Stopped";
                                    lblRunState.ForeColor = Color.Red;
                                }
                            });
                        }
                        catch (Exception) { break; }
                    }
                    else
                    {
                        // Handle waiting state or timeout
                        try
                        {
                            this.Invoke((MethodInvoker)delegate {
                                if (modeStr != "Auto")
                                {
                                    lblRunState.Text = "Waiting";
                                    lblRunState.ForeColor = Color.Orange;
                                }
                            });
                        }
                        catch (Exception) { break; }
                    }
                }
                
                Thread.Sleep(10);
            }
        }

        private void PicScope_Paint(object sender, PaintEventArgs e)
        {
            Graphics g = e.Graphics;
            int width = picScope.Width;
            int height = picScope.Height;

            // Draw Grid
            using (Pen gridPen = new Pen(Color.FromArgb(40, 40, 40)))
            {
                for (int i = 0; i < 10; i++)
                {
                    int x = (int)(i * (width / 10.0));
                    g.DrawLine(gridPen, x, 0, x, height);
                }
                for (int i = 0; i < 8; i++)
                {
                    int y = (int)(i * (height / 8.0));
                    g.DrawLine(gridPen, 0, y, width, y);
                }
            }

            // Draw Threshold Line
            int threshY = height - (int)(tbThreshold.Value * (height / 255.0));
            using (Pen threshPen = new Pen(Color.DarkOrchid))
            {
                threshPen.DashStyle = System.Drawing.Drawing2D.DashStyle.Dash;
                g.DrawLine(threshPen, 0, threshY, width, threshY);
            }

            // Draw Waveform
            if (lastWaveData != null && lastWaveData.Length > 0)
            {
                Point[] points = new Point[lastWaveData.Length];
                for (int i = 0; i < lastWaveData.Length; i++)
                {
                    int x = (int)((i / (double)(lastWaveData.Length - 1)) * width);
                    int y = height - (int)(lastWaveData[i] * (height / 255.0));
                    points[i] = new Point(x, y);
                }
                g.DrawLines(Pens.Cyan, points);
            }

            // Draw Status Info
            string yAxisStr = cbYAxis.Text;
            string timebaseStr = cbTimebase.Text;
            
            string freqStr = "";
            if (lastFreq > 1000000)
                freqStr = $"Freq: {lastFreq / 1000000.0:F6} MHz";
            else if (lastFreq > 1000)
                freqStr = $"Freq: {lastFreq / 1000.0:F3} kHz";
            else if (lastFreq > 0)
                freqStr = $"Freq: {lastFreq} Hz";
            else
                freqStr = "Freq: 0 Hz";

            string info = $"{yAxisStr}  |  {timebaseStr}/div  |  {freqStr}";
            using (Font font = new Font(this.Font, FontStyle.Bold))
            {
                g.DrawString(info, font, Brushes.Yellow, new PointF(10, 10));
            }
        }
    }
}
