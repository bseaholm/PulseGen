using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using CyUSB;

namespace StepperDLL
{
    public class StepperUSB
    {
        private enum usbCommands
        {
            usbSetEnable = 0,
            usbSetDirection,
            usbSetCounts,
            usbSetClock,
            usbStartMotion,
        };

        private USBDeviceList usbDevices;
        private CyHidDevice HidDevice = null;         // Handle of USB device

        public StepperUSB()
        {

            usbDevices = new USBDeviceList(CyConst.DEVICES_HID);
            HidDevice = usbDevices[0x2995, 0x000F] as CyHidDevice;
        }
        
        public void StepperSetEnable(float enable)
        {
            if (HidDevice != null)
            {
                HidDevice.Outputs.DataBuf[1] = (byte)usbCommands.usbSetEnable;

                byte[] byteAr = BitConverter.GetBytes(enable);
                HidDevice.Outputs.DataBuf[2] = byteAr[0];
                HidDevice.Outputs.DataBuf[3] = byteAr[1];
                HidDevice.Outputs.DataBuf[4] = byteAr[2];
                HidDevice.Outputs.DataBuf[5] = byteAr[3];

                HidDevice.WriteOutput();
            }
        }
        public void StepperSetDirection(float direction)
        {
            if (HidDevice != null)
            {
                HidDevice.Outputs.DataBuf[1] = (byte)usbCommands.usbSetDirection;

                byte[] byteAr = BitConverter.GetBytes(direction);
                HidDevice.Outputs.DataBuf[2] = byteAr[0];
                HidDevice.Outputs.DataBuf[3] = byteAr[1];
                HidDevice.Outputs.DataBuf[4] = byteAr[2];
                HidDevice.Outputs.DataBuf[5] = byteAr[3];

                HidDevice.WriteOutput();
            }
        }
        public void StepperStartMotion()
        {
            if (HidDevice != null)
            {
                HidDevice.Outputs.DataBuf[1] = (byte)usbCommands.usbStartMotion;
                HidDevice.WriteOutput();
            }
        }
        public void StepperSetCounts(float counts)
        {
            if (HidDevice != null)
            {
                HidDevice.Outputs.DataBuf[1] = (byte)usbCommands.usbSetCounts;

                byte[] byteAr = BitConverter.GetBytes(counts);
                HidDevice.Outputs.DataBuf[2] = byteAr[0];
                HidDevice.Outputs.DataBuf[3] = byteAr[1];
                HidDevice.Outputs.DataBuf[4] = byteAr[2];
                HidDevice.Outputs.DataBuf[5] = byteAr[3];

                HidDevice.WriteOutput();
            }
        }
        public void StepperSetHz(float hz)
        {
            if (HidDevice != null)
            {
                HidDevice.Outputs.DataBuf[1] = (byte)usbCommands.usbSetClock;

                byte[] byteAr = BitConverter.GetBytes(hz);
                HidDevice.Outputs.DataBuf[2] = byteAr[0];
                HidDevice.Outputs.DataBuf[3] = byteAr[1];
                HidDevice.Outputs.DataBuf[4] = byteAr[2];
                HidDevice.Outputs.DataBuf[5] = byteAr[3];

                HidDevice.WriteOutput();
            }
        }
    }
}
