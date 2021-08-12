// ======================================================================
// PulseGenerator.v generated from TopDesign.cysch
// 08/12/2021 at 14:35
// This file is auto generated. ANY EDITS YOU MAKE MAY BE LOST WHEN THIS FILE IS REGENERATED!!!
// ======================================================================

/* -- WARNING: The following section of defines are deprecated and will be removed in a future release -- */
`define CYDEV_CHIP_DIE_LEOPARD 1
`define CYDEV_CHIP_REV_LEOPARD_PRODUCTION 3
`define CYDEV_CHIP_REV_LEOPARD_ES3 3
`define CYDEV_CHIP_REV_LEOPARD_ES2 1
`define CYDEV_CHIP_REV_LEOPARD_ES1 0
`define CYDEV_CHIP_DIE_PSOC5LP 2
`define CYDEV_CHIP_REV_PSOC5LP_PRODUCTION 0
`define CYDEV_CHIP_REV_PSOC5LP_ES0 0
`define CYDEV_CHIP_DIE_PSOC5TM 3
`define CYDEV_CHIP_REV_PSOC5TM_PRODUCTION 1
`define CYDEV_CHIP_REV_PSOC5TM_ES1 1
`define CYDEV_CHIP_REV_PSOC5TM_ES0 0
`define CYDEV_CHIP_DIE_TMA4 4
`define CYDEV_CHIP_REV_TMA4_PRODUCTION 17
`define CYDEV_CHIP_REV_TMA4_ES 17
`define CYDEV_CHIP_REV_TMA4_ES2 33
`define CYDEV_CHIP_DIE_PSOC4A 5
`define CYDEV_CHIP_REV_PSOC4A_PRODUCTION 17
`define CYDEV_CHIP_REV_PSOC4A_ES0 17
`define CYDEV_CHIP_DIE_PSOC6ABLE2 6
`define CYDEV_CHIP_REV_PSOC6ABLE2_PRODUCTION 0
`define CYDEV_CHIP_REV_PSOC6ABLE2_NO_UDB 0
`define CYDEV_CHIP_DIE_VOLANS 7
`define CYDEV_CHIP_REV_VOLANS_PRODUCTION 0
`define CYDEV_CHIP_DIE_BERRYPECKER 8
`define CYDEV_CHIP_REV_BERRYPECKER_PRODUCTION 0
`define CYDEV_CHIP_DIE_CRANE 9
`define CYDEV_CHIP_REV_CRANE_PRODUCTION 0
`define CYDEV_CHIP_DIE_FM3 10
`define CYDEV_CHIP_REV_FM3_PRODUCTION 0
`define CYDEV_CHIP_DIE_FM4 11
`define CYDEV_CHIP_REV_FM4_PRODUCTION 0
`define CYDEV_CHIP_DIE_EXPECT 2
`define CYDEV_CHIP_REV_EXPECT 0
`define CYDEV_CHIP_DIE_ACTUAL 2
/* -- WARNING: The previous section of defines are deprecated and will be removed in a future release -- */
`define CYDEV_CHIP_FAMILY_PSOC3 1
`define CYDEV_CHIP_FAMILY_PSOC4 2
`define CYDEV_CHIP_FAMILY_PSOC5 3
`define CYDEV_CHIP_FAMILY_PSOC6 4
`define CYDEV_CHIP_FAMILY_FM0P 5
`define CYDEV_CHIP_FAMILY_FM3 6
`define CYDEV_CHIP_FAMILY_FM4 7
`define CYDEV_CHIP_FAMILY_UNKNOWN 0
`define CYDEV_CHIP_MEMBER_UNKNOWN 0
`define CYDEV_CHIP_MEMBER_3A 1
`define CYDEV_CHIP_REVISION_3A_PRODUCTION 3
`define CYDEV_CHIP_REVISION_3A_ES3 3
`define CYDEV_CHIP_REVISION_3A_ES2 1
`define CYDEV_CHIP_REVISION_3A_ES1 0
`define CYDEV_CHIP_MEMBER_5B 2
`define CYDEV_CHIP_REVISION_5B_PRODUCTION 0
`define CYDEV_CHIP_REVISION_5B_ES0 0
`define CYDEV_CHIP_MEMBER_5A 3
`define CYDEV_CHIP_REVISION_5A_PRODUCTION 1
`define CYDEV_CHIP_REVISION_5A_ES1 1
`define CYDEV_CHIP_REVISION_5A_ES0 0
`define CYDEV_CHIP_MEMBER_4G 4
`define CYDEV_CHIP_REVISION_4G_PRODUCTION 17
`define CYDEV_CHIP_REVISION_4G_ES 17
`define CYDEV_CHIP_REVISION_4G_ES2 33
`define CYDEV_CHIP_MEMBER_4U 5
`define CYDEV_CHIP_REVISION_4U_PRODUCTION 0
`define CYDEV_CHIP_MEMBER_4E 6
`define CYDEV_CHIP_REVISION_4E_PRODUCTION 0
`define CYDEV_CHIP_MEMBER_4O 7
`define CYDEV_CHIP_REVISION_4O_PRODUCTION 0
`define CYDEV_CHIP_MEMBER_4R 8
`define CYDEV_CHIP_REVISION_4R_PRODUCTION 0
`define CYDEV_CHIP_MEMBER_4N 9
`define CYDEV_CHIP_REVISION_4N_PRODUCTION 0
`define CYDEV_CHIP_MEMBER_4S 10
`define CYDEV_CHIP_REVISION_4S_PRODUCTION 0
`define CYDEV_CHIP_MEMBER_4Q 11
`define CYDEV_CHIP_REVISION_4Q_PRODUCTION 0
`define CYDEV_CHIP_MEMBER_4D 12
`define CYDEV_CHIP_REVISION_4D_PRODUCTION 0
`define CYDEV_CHIP_MEMBER_4J 13
`define CYDEV_CHIP_REVISION_4J_PRODUCTION 0
`define CYDEV_CHIP_MEMBER_4K 14
`define CYDEV_CHIP_REVISION_4K_PRODUCTION 0
`define CYDEV_CHIP_MEMBER_4H 15
`define CYDEV_CHIP_REVISION_4H_PRODUCTION 0
`define CYDEV_CHIP_MEMBER_4A 16
`define CYDEV_CHIP_REVISION_4A_PRODUCTION 17
`define CYDEV_CHIP_REVISION_4A_ES0 17
`define CYDEV_CHIP_MEMBER_4F 17
`define CYDEV_CHIP_REVISION_4F_PRODUCTION 0
`define CYDEV_CHIP_REVISION_4F_PRODUCTION_256K 0
`define CYDEV_CHIP_REVISION_4F_PRODUCTION_256DMA 0
`define CYDEV_CHIP_MEMBER_4P 18
`define CYDEV_CHIP_REVISION_4P_PRODUCTION 0
`define CYDEV_CHIP_MEMBER_4M 19
`define CYDEV_CHIP_REVISION_4M_PRODUCTION 0
`define CYDEV_CHIP_MEMBER_4L 20
`define CYDEV_CHIP_REVISION_4L_PRODUCTION 0
`define CYDEV_CHIP_MEMBER_4I 21
`define CYDEV_CHIP_REVISION_4I_PRODUCTION 0
`define CYDEV_CHIP_MEMBER_6A 22
`define CYDEV_CHIP_REVISION_6A_PRODUCTION 0
`define CYDEV_CHIP_REVISION_6A_NO_UDB 0
`define CYDEV_CHIP_MEMBER_PDL_FM0P_TYPE1 23
`define CYDEV_CHIP_REVISION_PDL_FM0P_TYPE1_PRODUCTION 0
`define CYDEV_CHIP_MEMBER_PDL_FM0P_TYPE2 24
`define CYDEV_CHIP_REVISION_PDL_FM0P_TYPE2_PRODUCTION 0
`define CYDEV_CHIP_MEMBER_PDL_FM0P_TYPE3 25
`define CYDEV_CHIP_REVISION_PDL_FM0P_TYPE3_PRODUCTION 0
`define CYDEV_CHIP_MEMBER_FM3 26
`define CYDEV_CHIP_REVISION_FM3_PRODUCTION 0
`define CYDEV_CHIP_MEMBER_FM4 27
`define CYDEV_CHIP_REVISION_FM4_PRODUCTION 0
`define CYDEV_CHIP_FAMILY_USED 3
`define CYDEV_CHIP_MEMBER_USED 2
`define CYDEV_CHIP_REVISION_USED 0
// Component: ZeroTerminal
`ifdef CY_BLK_DIR
`undef CY_BLK_DIR
`endif

`ifdef WARP
`define CY_BLK_DIR "C:\Program Files (x86)\Cypress\PSoC Creator\4.1\PSoC Creator\psoc\content\CyPrimitives\cyprimitives.cylib\ZeroTerminal"
`include "C:\Program Files (x86)\Cypress\PSoC Creator\4.1\PSoC Creator\psoc\content\CyPrimitives\cyprimitives.cylib\ZeroTerminal\ZeroTerminal.v"
`else
`define CY_BLK_DIR "C:\Program Files (x86)\Cypress\PSoC Creator\4.1\PSoC Creator\psoc\content\CyPrimitives\cyprimitives.cylib\ZeroTerminal"
`include "C:\Program Files (x86)\Cypress\PSoC Creator\4.1\PSoC Creator\psoc\content\CyPrimitives\cyprimitives.cylib\ZeroTerminal\ZeroTerminal.v"
`endif

// Component: cy_virtualmux_v1_0
`ifdef CY_BLK_DIR
`undef CY_BLK_DIR
`endif

`ifdef WARP
`define CY_BLK_DIR "C:\Program Files (x86)\Cypress\PSoC Creator\4.1\PSoC Creator\psoc\content\CyPrimitives\cyprimitives.cylib\cy_virtualmux_v1_0"
`include "C:\Program Files (x86)\Cypress\PSoC Creator\4.1\PSoC Creator\psoc\content\CyPrimitives\cyprimitives.cylib\cy_virtualmux_v1_0\cy_virtualmux_v1_0.v"
`else
`define CY_BLK_DIR "C:\Program Files (x86)\Cypress\PSoC Creator\4.1\PSoC Creator\psoc\content\CyPrimitives\cyprimitives.cylib\cy_virtualmux_v1_0"
`include "C:\Program Files (x86)\Cypress\PSoC Creator\4.1\PSoC Creator\psoc\content\CyPrimitives\cyprimitives.cylib\cy_virtualmux_v1_0\cy_virtualmux_v1_0.v"
`endif

// Component: B_Timer_v2_70
`ifdef CY_BLK_DIR
`undef CY_BLK_DIR
`endif

`ifdef WARP
`define CY_BLK_DIR "C:\Program Files (x86)\Cypress\PSoC Creator\4.1\PSoC Creator\psoc\content\CyComponentLibrary\CyComponentLibrary.cylib\B_Timer_v2_70"
`include "C:\Program Files (x86)\Cypress\PSoC Creator\4.1\PSoC Creator\psoc\content\CyComponentLibrary\CyComponentLibrary.cylib\B_Timer_v2_70\B_Timer_v2_70.v"
`else
`define CY_BLK_DIR "C:\Program Files (x86)\Cypress\PSoC Creator\4.1\PSoC Creator\psoc\content\CyComponentLibrary\CyComponentLibrary.cylib\B_Timer_v2_70"
`include "C:\Program Files (x86)\Cypress\PSoC Creator\4.1\PSoC Creator\psoc\content\CyComponentLibrary\CyComponentLibrary.cylib\B_Timer_v2_70\B_Timer_v2_70.v"
`endif

// Component: OneTerminal
`ifdef CY_BLK_DIR
`undef CY_BLK_DIR
`endif

`ifdef WARP
`define CY_BLK_DIR "C:\Program Files (x86)\Cypress\PSoC Creator\4.1\PSoC Creator\psoc\content\CyPrimitives\cyprimitives.cylib\OneTerminal"
`include "C:\Program Files (x86)\Cypress\PSoC Creator\4.1\PSoC Creator\psoc\content\CyPrimitives\cyprimitives.cylib\OneTerminal\OneTerminal.v"
`else
`define CY_BLK_DIR "C:\Program Files (x86)\Cypress\PSoC Creator\4.1\PSoC Creator\psoc\content\CyPrimitives\cyprimitives.cylib\OneTerminal"
`include "C:\Program Files (x86)\Cypress\PSoC Creator\4.1\PSoC Creator\psoc\content\CyPrimitives\cyprimitives.cylib\OneTerminal\OneTerminal.v"
`endif

// Timer_v2_70(CaptureAlternatingFall=false, CaptureAlternatingRise=false, CaptureCount=2, CaptureCounterEnabled=false, CaptureInputEnabled=false, CaptureMode=0, CONTROL3=0, ControlRegRemoved=0, CtlModeReplacementString=SyncCtl, CyGetRegReplacementString=CY_GET_REG32, CySetRegReplacementString=CY_SET_REG32, DeviceFamily=PSoC5, EnableMode=0, FF16=false, FF8=false, FixedFunction=false, FixedFunctionUsed=0, HWCaptureCounterEnabled=false, InterruptOnCapture=false, InterruptOnFIFOFull=false, InterruptOnTC=false, IntOnCapture=0, IntOnFIFOFull=0, IntOnTC=0, NumberOfCaptures=1, param45=1, Period=197, RegDefReplacementString=reg32, RegSizeReplacementString=uint32, Resolution=32, RstStatusReplacementString=rstSts, RunMode=1, SiliconRevision=0, SoftwareCaptureModeEnabled=false, SoftwareTriggerModeEnabled=false, TriggerInputEnabled=false, TriggerMode=0, UDB16=false, UDB24=false, UDB32=true, UDB8=false, UDBControlReg=true, UsesHWEnable=0, VerilogSectionReplacementString=sT32, CY_API_CALLBACK_HEADER_INCLUDE=#include "cyapicallbacks.h", CY_COMMENT=, CY_COMPONENT_NAME=Timer_v2_70, CY_CONST_CONFIG=true, CY_CONTROL_FILE=<:default:>, CY_DATASHEET_FILE=<:default:>, CY_FITTER_NAME=Timer1, CY_INSTANCE_SHORT_NAME=Timer1, CY_MAJOR_VERSION=2, CY_MINOR_VERSION=70, CY_PDL_DRIVER_NAME=, CY_PDL_DRIVER_REQ_VERSION=, CY_PDL_DRIVER_SUBGROUP=, CY_PDL_DRIVER_VARIANT=, CY_REMOVE=false, CY_SUPPRESS_API_GEN=false, CY_VERSION=PSoC Creator  4.1 Update 1, INSTANCE_NAME=Timer1, )
module Timer_v2_70_0 (
    reset,
    interrupt,
    enable,
    trigger,
    capture,
    capture_out,
    tc,
    clock);
    input       reset;
    output      interrupt;
    input       enable;
    input       trigger;
    input       capture;
    output      capture_out;
    output      tc;
    input       clock;

    parameter CaptureCount = 2;
    parameter CaptureCounterEnabled = 0;
    parameter DeviceFamily = "PSoC5";
    parameter InterruptOnCapture = 0;
    parameter InterruptOnTC = 0;
    parameter Resolution = 32;
    parameter SiliconRevision = "0";

          wire  Net_261;
          wire  Net_260;
          wire  Net_266;
          wire  Net_102;
          wire  Net_55;
          wire  Net_57;
          wire  Net_53;
          wire  Net_51;

    ZeroTerminal ZeroTerminal_1 (
        .z(Net_260));

	// VirtualMux_2 (cy_virtualmux_v1_0)
	assign interrupt = Net_55;

	// VirtualMux_3 (cy_virtualmux_v1_0)
	assign tc = Net_53;

    B_Timer_v2_70 TimerUDB (
        .reset(reset),
        .interrupt(Net_55),
        .enable(enable),
        .trigger(trigger),
        .capture_in(capture),
        .capture_out(capture_out),
        .tc(Net_53),
        .clock(clock));
    defparam TimerUDB.Capture_Count = 2;
    defparam TimerUDB.CaptureCounterEnabled = 0;
    defparam TimerUDB.CaptureMode = 0;
    defparam TimerUDB.EnableMode = 0;
    defparam TimerUDB.InterruptOnCapture = 0;
    defparam TimerUDB.Resolution = 32;
    defparam TimerUDB.RunMode = 1;
    defparam TimerUDB.TriggerMode = 0;

    OneTerminal OneTerminal_1 (
        .o(Net_102));

	// VirtualMux_1 (cy_virtualmux_v1_0)
	assign Net_266 = Net_102;



endmodule

// Component: cy_constant_v1_0
`ifdef CY_BLK_DIR
`undef CY_BLK_DIR
`endif

`ifdef WARP
`define CY_BLK_DIR "C:\Program Files (x86)\Cypress\PSoC Creator\4.1\PSoC Creator\psoc\content\CyPrimitives\cyprimitives.cylib\cy_constant_v1_0"
`include "C:\Program Files (x86)\Cypress\PSoC Creator\4.1\PSoC Creator\psoc\content\CyPrimitives\cyprimitives.cylib\cy_constant_v1_0\cy_constant_v1_0.v"
`else
`define CY_BLK_DIR "C:\Program Files (x86)\Cypress\PSoC Creator\4.1\PSoC Creator\psoc\content\CyPrimitives\cyprimitives.cylib\cy_constant_v1_0"
`include "C:\Program Files (x86)\Cypress\PSoC Creator\4.1\PSoC Creator\psoc\content\CyPrimitives\cyprimitives.cylib\cy_constant_v1_0\cy_constant_v1_0.v"
`endif

// Component: cydff_v1_30
`ifdef CY_BLK_DIR
`undef CY_BLK_DIR
`endif

`ifdef WARP
`define CY_BLK_DIR "C:\Program Files (x86)\Cypress\PSoC Creator\4.1\PSoC Creator\psoc\content\CyPrimitives\cyprimitives.cylib\cydff_v1_30"
`include "C:\Program Files (x86)\Cypress\PSoC Creator\4.1\PSoC Creator\psoc\content\CyPrimitives\cyprimitives.cylib\cydff_v1_30\cydff_v1_30.v"
`else
`define CY_BLK_DIR "C:\Program Files (x86)\Cypress\PSoC Creator\4.1\PSoC Creator\psoc\content\CyPrimitives\cyprimitives.cylib\cydff_v1_30"
`include "C:\Program Files (x86)\Cypress\PSoC Creator\4.1\PSoC Creator\psoc\content\CyPrimitives\cyprimitives.cylib\cydff_v1_30\cydff_v1_30.v"
`endif

// Component: and_v1_0
`ifdef CY_BLK_DIR
`undef CY_BLK_DIR
`endif

`ifdef WARP
`define CY_BLK_DIR "C:\Program Files (x86)\Cypress\PSoC Creator\4.1\PSoC Creator\psoc\content\CyPrimitives\cyprimitives.cylib\and_v1_0"
`include "C:\Program Files (x86)\Cypress\PSoC Creator\4.1\PSoC Creator\psoc\content\CyPrimitives\cyprimitives.cylib\and_v1_0\and_v1_0.v"
`else
`define CY_BLK_DIR "C:\Program Files (x86)\Cypress\PSoC Creator\4.1\PSoC Creator\psoc\content\CyPrimitives\cyprimitives.cylib\and_v1_0"
`include "C:\Program Files (x86)\Cypress\PSoC Creator\4.1\PSoC Creator\psoc\content\CyPrimitives\cyprimitives.cylib\and_v1_0\and_v1_0.v"
`endif

// Component: CyControlReg_v1_80
`ifdef CY_BLK_DIR
`undef CY_BLK_DIR
`endif

`ifdef WARP
`define CY_BLK_DIR "C:\Program Files (x86)\Cypress\PSoC Creator\4.1\PSoC Creator\psoc\content\CyPrimitives\cyprimitives.cylib\CyControlReg_v1_80"
`include "C:\Program Files (x86)\Cypress\PSoC Creator\4.1\PSoC Creator\psoc\content\CyPrimitives\cyprimitives.cylib\CyControlReg_v1_80\CyControlReg_v1_80.v"
`else
`define CY_BLK_DIR "C:\Program Files (x86)\Cypress\PSoC Creator\4.1\PSoC Creator\psoc\content\CyPrimitives\cyprimitives.cylib\CyControlReg_v1_80"
`include "C:\Program Files (x86)\Cypress\PSoC Creator\4.1\PSoC Creator\psoc\content\CyPrimitives\cyprimitives.cylib\CyControlReg_v1_80\CyControlReg_v1_80.v"
`endif

// Component: not_v1_0
`ifdef CY_BLK_DIR
`undef CY_BLK_DIR
`endif

`ifdef WARP
`define CY_BLK_DIR "C:\Program Files (x86)\Cypress\PSoC Creator\4.1\PSoC Creator\psoc\content\CyPrimitives\cyprimitives.cylib\not_v1_0"
`include "C:\Program Files (x86)\Cypress\PSoC Creator\4.1\PSoC Creator\psoc\content\CyPrimitives\cyprimitives.cylib\not_v1_0\not_v1_0.v"
`else
`define CY_BLK_DIR "C:\Program Files (x86)\Cypress\PSoC Creator\4.1\PSoC Creator\psoc\content\CyPrimitives\cyprimitives.cylib\not_v1_0"
`include "C:\Program Files (x86)\Cypress\PSoC Creator\4.1\PSoC Creator\psoc\content\CyPrimitives\cyprimitives.cylib\not_v1_0\not_v1_0.v"
`endif

// USBFS_v3_10(AudioDescriptors=<?xml version="1.0" encoding="utf-16"?>\r\n<Tree xmlns:CustomizerVersion="3_10">\r\n  <Tree_x0020_Descriptors>\r\n    <DescriptorNode Key="Audio">\r\n      <Nodes />\r\n    </DescriptorNode>\r\n  </Tree_x0020_Descriptors>\r\n</Tree>, CDCDescriptors=<?xml version="1.0" encoding="utf-16"?>\r\n<Tree xmlns:CustomizerVersion="3_10">\r\n  <Tree_x0020_Descriptors>\r\n    <DescriptorNode Key="CDC">\r\n      <Nodes />\r\n    </DescriptorNode>\r\n  </Tree_x0020_Descriptors>\r\n</Tree>, DeviceDescriptors=<?xml version="1.0" encoding="utf-16"?>\r\n<Tree xmlns:CustomizerVersion="3_10">\r\n  <Tree_x0020_Descriptors>\r\n    <DescriptorNode Key="Device">\r\n      <Nodes>\r\n        <DescriptorNode Key="USBDescriptor820">\r\n          <m_value d6p1:type="DeviceDescriptor" xmlns:d6p1="http://www.w3.org/2001/XMLSchema-instance">\r\n            <bDescriptorType>DEVICE</bDescriptorType>\r\n            <bLength>18</bLength>\r\n            <iwManufacturer>966</iwManufacturer>\r\n            <iwProduct>967</iwProduct>\r\n            <sManufacturer>None</sManufacturer>\r\n            <sProduct>Stepper Module</sProduct>\r\n            <bDeviceClass>0</bDeviceClass>\r\n            <bDeviceSubClass>0</bDeviceSubClass>\r\n            <bDeviceProtocol>0</bDeviceProtocol>\r\n            <bMaxPacketSize0>0</bMaxPacketSize0>\r\n            <idVendor>10645</idVendor>\r\n            <idProduct>15</idProduct>\r\n            <bcdDevice>1</bcdDevice>\r\n            <bcdUSB>512</bcdUSB>\r\n            <iManufacturer>2</iManufacturer>\r\n            <iProduct>3</iProduct>\r\n            <iSerialNumber>0</iSerialNumber>\r\n            <bNumConfigurations>1</bNumConfigurations>\r\n            <bMemoryMgmt>0</bMemoryMgmt>\r\n            <bMemoryAlloc>0</bMemoryAlloc>\r\n          </m_value>\r\n          <Value d6p1:type="DeviceDescriptor" xmlns:d6p1="http://www.w3.org/2001/XMLSchema-instance">\r\n            <bDescriptorType>DEVICE</bDescriptorType>\r\n            <bLength>18</bLength>\r\n            <iwManufacturer>966</iwManufacturer>\r\n            <iwProduct>967</iwProduct>\r\n            <sManufacturer>None</sManufacturer>\r\n            <sProduct>Stepper Module</sProduct>\r\n            <bDeviceClass>0</bDeviceClass>\r\n            <bDeviceSubClass>0</bDeviceSubClass>\r\n            <bDeviceProtocol>0</bDeviceProtocol>\r\n            <bMaxPacketSize0>0</bMaxPacketSize0>\r\n            <idVendor>10645</idVendor>\r\n            <idProduct>15</idProduct>\r\n            <bcdDevice>1</bcdDevice>\r\n            <bcdUSB>512</bcdUSB>\r\n            <iManufacturer>2</iManufacturer>\r\n            <iProduct>3</iProduct>\r\n            <iSerialNumber>0</iSerialNumber>\r\n            <bNumConfigurations>1</bNumConfigurations>\r\n            <bMemoryMgmt>0</bMemoryMgmt>\r\n            <bMemoryAlloc>0</bMemoryAlloc>\r\n          </Value>\r\n          <Nodes>\r\n            <DescriptorNode Key="USBDescriptor825">\r\n              <m_value d8p1:type="ConfigDescriptor" xmlns:d8p1="http://www.w3.org/2001/XMLSchema-instance">\r\n                <bDescriptorType>CONFIGURATION</bDescriptorType>\r\n                <bLength>9</bLength>\r\n                <iwConfiguration>968</iwConfiguration>\r\n                <sConfiguration>Stepper Module HID</sConfiguration>\r\n                <wTotalLength>41</wTotalLength>\r\n                <bNumInterfaces>1</bNumInterfaces>\r\n                <bConfigurationValue>0</bConfigurationValue>\r\n                <iConfiguration>4</iConfiguration>\r\n                <bmAttributes>128</bmAttributes>\r\n                <bMaxPower>50</bMaxPower>\r\n              </m_value>\r\n              <Value d8p1:type="ConfigDescriptor" xmlns:d8p1="http://www.w3.org/2001/XMLSchema-instance">\r\n                <bDescriptorType>CONFIGURATION</bDescriptorType>\r\n                <bLength>9</bLength>\r\n                <iwConfiguration>968</iwConfiguration>\r\n                <sConfiguration>Stepper Module HID</sConfiguration>\r\n                <wTotalLength>41</wTotalLength>\r\n                <bNumInterfaces>1</bNumInterfaces>\r\n                <bConfigurationValue>0</bConfigurationValue>\r\n                <iConfiguration>4</iConfiguration>\r\n                <bmAttributes>128</bmAttributes>\r\n                <bMaxPower>50</bMaxPower>\r\n              </Value>\r\n              <Nodes>\r\n                <DescriptorNode Key="Interface829">\r\n                  <m_value d10p1:type="InterfaceGeneralDescriptor" xmlns:d10p1="http://www.w3.org/2001/XMLSchema-instance">\r\n                    <bDescriptorType>ALTERNATE</bDescriptorType>\r\n                    <bLength>0</bLength>\r\n                    <DisplayName />\r\n                  </m_value>\r\n                  <Value d10p1:type="InterfaceGeneralDescriptor" xmlns:d10p1="http://www.w3.org/2001/XMLSchema-instance">\r\n                    <bDescriptorType>ALTERNATE</bDescriptorType>\r\n                    <bLength>0</bLength>\r\n                    <DisplayName />\r\n                  </Value>\r\n                  <Nodes>\r\n                    <DescriptorNode Key="USBDescriptor830">\r\n                      <m_value d12p1:type="InterfaceDescriptor" xmlns:d12p1="http://www.w3.org/2001/XMLSchema-instance">\r\n                        <bDescriptorType>INTERFACE</bDescriptorType>\r\n                        <bLength>9</bLength>\r\n                        <iwInterface>968</iwInterface>\r\n                        <bInterfaceClass>3</bInterfaceClass>\r\n                        <bAlternateSetting>0</bAlternateSetting>\r\n                        <bInterfaceNumber>0</bInterfaceNumber>\r\n                        <bNumEndpoints>2</bNumEndpoints>\r\n                        <bInterfaceSubClass>0</bInterfaceSubClass>\r\n                        <bInterfaceProtocol>0</bInterfaceProtocol>\r\n                        <iInterface>4</iInterface>\r\n                        <sInterface>Stepper Module HID</sInterface>\r\n                      </m_value>\r\n                      <Value d12p1:type="InterfaceDescriptor" xmlns:d12p1="http://www.w3.org/2001/XMLSchema-instance">\r\n                        <bDescriptorType>INTERFACE</bDescriptorType>\r\n                        <bLength>9</bLength>\r\n                        <iwInterface>968</iwInterface>\r\n                        <bInterfaceClass>3</bInterfaceClass>\r\n                        <bAlternateSetting>0</bAlternateSetting>\r\n                        <bInterfaceNumber>0</bInterfaceNumber>\r\n                        <bNumEndpoints>2</bNumEndpoints>\r\n                        <bInterfaceSubClass>0</bInterfaceSubClass>\r\n                        <bInterfaceProtocol>0</bInterfaceProtocol>\r\n                        <iInterface>4</iInterface>\r\n                        <sInterface>Stepper Module HID</sInterface>\r\n                      </Value>\r\n                      <Nodes>\r\n                        <DescriptorNode Key="USBDescriptor832">\r\n                          <m_value d14p1:type="EndpointDescriptor" xmlns:d14p1="http://www.w3.org/2001/XMLSchema-instance">\r\n                            <bDescriptorType>ENDPOINT</bDescriptorType>\r\n                            <bLength>7</bLength>\r\n                            <DoubleBuffer>false</DoubleBuffer>\r\n                            <bEndpointAddress>129</bEndpointAddress>\r\n                            <bmAttributes>3</bmAttributes>\r\n                            <wMaxPacketSize>64</wMaxPacketSize>\r\n                          </m_value>\r\n                          <Value d14p1:type="EndpointDescriptor" xmlns:d14p1="http://www.w3.org/2001/XMLSchema-instance">\r\n                            <bDescriptorType>ENDPOINT</bDescriptorType>\r\n                            <bLength>7</bLength>\r\n                            <DoubleBuffer>false</DoubleBuffer>\r\n                            <bEndpointAddress>129</bEndpointAddress>\r\n                            <bmAttributes>3</bmAttributes>\r\n                            <wMaxPacketSize>64</wMaxPacketSize>\r\n                          </Value>\r\n                          <Nodes />\r\n                        </DescriptorNode>\r\n                        <DescriptorNode Key="USBDescriptor833">\r\n                          <m_value d14p1:type="EndpointDescriptor" xmlns:d14p1="http://www.w3.org/2001/XMLSchema-instance">\r\n                            <bDescriptorType>ENDPOINT</bDescriptorType>\r\n                            <bLength>7</bLength>\r\n                            <DoubleBuffer>false</DoubleBuffer>\r\n                            <bEndpointAddress>2</bEndpointAddress>\r\n                            <bmAttributes>3</bmAttributes>\r\n                            <wMaxPacketSize>64</wMaxPacketSize>\r\n                          </m_value>\r\n                          <Value d14p1:type="EndpointDescriptor" xmlns:d14p1="http://www.w3.org/2001/XMLSchema-instance">\r\n                            <bDescriptorType>ENDPOINT</bDescriptorType>\r\n                            <bLength>7</bLength>\r\n                            <DoubleBuffer>false</DoubleBuffer>\r\n                            <bEndpointAddress>2</bEndpointAddress>\r\n                            <bmAttributes>3</bmAttributes>\r\n                            <wMaxPacketSize>64</wMaxPacketSize>\r\n                          </Value>\r\n                          <Nodes />\r\n                        </DescriptorNode>\r\n                        <DescriptorNode Key="USBDescriptor834">\r\n                          <m_value d14p1:type="HIDDescriptor" xmlns:d14p1="http://www.w3.org/2001/XMLSchema-instance">\r\n                            <bDescriptorType>HID</bDescriptorType>\r\n                            <bLength>9</bLength>\r\n                            <bReportIndex>1</bReportIndex>\r\n                            <wReportIndex>835</wReportIndex>\r\n                            <bcdHID>0</bcdHID>\r\n                            <bCountryCode>0</bCountryCode>\r\n                            <bNumDescriptors>1</bNumDescriptors>\r\n                            <bDescriptorType1>34</bDescriptorType1>\r\n                            <wDescriptorLength>38</wDescriptorLength>\r\n                          </m_value>\r\n                          <Value d14p1:type="HIDDescriptor" xmlns:d14p1="http://www.w3.org/2001/XMLSchema-instance">\r\n                            <bDescriptorType>HID</bDescriptorType>\r\n                            <bLength>9</bLength>\r\n                            <bReportIndex>1</bReportIndex>\r\n                            <wReportIndex>835</wReportIndex>\r\n                            <bcdHID>0</bcdHID>\r\n                            <bCountryCode>0</bCountryCode>\r\n                            <bNumDescriptors>1</bNumDescriptors>\r\n                            <bDescriptorType1>34</bDescriptorType1>\r\n                            <wDescriptorLength>38</wDescriptorLength>\r\n                          </Value>\r\n                          <Nodes />\r\n                        </DescriptorNode>\r\n                      </Nodes>\r\n                    </DescriptorNode>\r\n                  </Nodes>\r\n                </DescriptorNode>\r\n              </Nodes>\r\n            </DescriptorNode>\r\n          </Nodes>\r\n        </DescriptorNode>\r\n      </Nodes>\r\n    </DescriptorNode>\r\n  </Tree_x0020_Descriptors>\r\n</Tree>, DmaChannelPriority=3, DW_Hide_DmaAuto=true, DW_Hide_Usbv2Regs=true, DW_RegSize=8, DW_USB_CHGDET_CTRL=CR0, DW_USB_INTR_CAUSE_HI=CR0, DW_USB_INTR_CAUSE_LO=CR0, DW_USB_INTR_CAUSE_MED=CR0, DW_USB_INTR_LVL_SEL=CR0, DW_USB_INTR_SIE=CR0, DW_USB_INTR_SIE_MASK=CR0, DW_USB_LPM_CTRL=CR0, DW_USB_LPM_STAT=CR0, DW_USB_POWER_CTRL=CR0, EnableBatteryChargDetect=false, EnableCDCApi=true, EnableMidiApi=true, endpointMA=0, endpointMM=0, epDMAautoOptimization=false, extern_cls=false, extern_vbus=true, extern_vnd=false, extJackCount=0, Gen16bitEpAccessApi=false, HandleMscRequests=true, HIDReportDescriptors=<?xml version="1.0" encoding="utf-16"?>\r\n<Tree xmlns:CustomizerVersion="3_10">\r\n  <Tree_x0020_Descriptors>\r\n    <DescriptorNode Key="HIDReport">\r\n      <Nodes>\r\n        <DescriptorNode Key="USBDescriptor835">\r\n          <m_value d6p1:type="HIDReportDescriptor" xmlns:d6p1="http://www.w3.org/2001/XMLSchema-instance">\r\n            <bDescriptorType>HID_REPORT</bDescriptorType>\r\n            <bLength>2</bLength>\r\n            <Name>Generic HID</Name>\r\n            <wLength>38</wLength>\r\n          </m_value>\r\n          <Value d6p1:type="HIDReportDescriptor" xmlns:d6p1="http://www.w3.org/2001/XMLSchema-instance">\r\n            <bDescriptorType>HID_REPORT</bDescriptorType>\r\n            <bLength>2</bLength>\r\n            <Name>Generic HID</Name>\r\n            <wLength>38</wLength>\r\n          </Value>\r\n          <Nodes>\r\n            <DescriptorNode Key="USBDescriptor836">\r\n              <m_value d8p1:type="HIDReportItemDescriptor" xmlns:d8p1="http://www.w3.org/2001/XMLSchema-instance">\r\n                <bDescriptorType>HID_REPORT_ITEM</bDescriptorType>\r\n                <bLength>1</bLength>\r\n                <Item Code="4" Type="USAGE_PAGE">\r\n                  <Description>(Vendor Defined Page)</Description>\r\n                  <Value>\r\n                    <unsignedByte>6</unsignedByte>\r\n                    <unsignedByte>0</unsignedByte>\r\n                    <unsignedByte>255</unsignedByte>\r\n                  </Value>\r\n                  <Kind>List</Kind>\r\n                </Item>\r\n              </m_value>\r\n              <Value d8p1:type="HIDReportItemDescriptor" xmlns:d8p1="http://www.w3.org/2001/XMLSchema-instance">\r\n                <bDescriptorType>HID_REPORT_ITEM</bDescriptorType>\r\n                <bLength>1</bLength>\r\n                <Item Code="4" Type="USAGE_PAGE">\r\n                  <Description>(Vendor Defined Page)</Description>\r\n                  <Value>\r\n                    <unsignedByte>6</unsignedByte>\r\n                    <unsignedByte>0</unsignedByte>\r\n                    <unsignedByte>255</unsignedByte>\r\n                  </Value>\r\n                  <Kind>List</Kind>\r\n                </Item>\r\n              </Value>\r\n              <Nodes />\r\n            </DescriptorNode>\r\n            <DescriptorNode Key="USBDescriptor837">\r\n              <m_value d8p1:type="HIDReportItemDescriptor" xmlns:d8p1="http://www.w3.org/2001/XMLSchema-instance">\r\n                <bDescriptorType>HID_REPORT_ITEM</bDescriptorType>\r\n                <bLength>1</bLength>\r\n                <Item Code="8" Type="USAGE">\r\n                  <Description>(Pointer)</Description>\r\n                  <Value>\r\n                    <unsignedByte>9</unsignedByte>\r\n                    <unsignedByte>1</unsignedByte>\r\n                  </Value>\r\n                  <Kind>List</Kind>\r\n                </Item>\r\n              </m_value>\r\n              <Value d8p1:type="HIDReportItemDescriptor" xmlns:d8p1="http://www.w3.org/2001/XMLSchema-instance">\r\n                <bDescriptorType>HID_REPORT_ITEM</bDescriptorType>\r\n                <bLength>1</bLength>\r\n                <Item Code="8" Type="USAGE">\r\n                  <Description>(Pointer)</Description>\r\n                  <Value>\r\n                    <unsignedByte>9</unsignedByte>\r\n                    <unsignedByte>1</unsignedByte>\r\n                  </Value>\r\n                  <Kind>List</Kind>\r\n                </Item>\r\n              </Value>\r\n              <Nodes />\r\n            </DescriptorNode>\r\n            <DescriptorNode Key="USBDescriptor838">\r\n              <m_value d8p1:type="HIDReportItemDescriptor" xmlns:d8p1="http://www.w3.org/2001/XMLSchema-instance">\r\n                <bDescriptorType>HID_REPORT_ITEM</bDescriptorType>\r\n                <bLength>1</bLength>\r\n                <Item Code="160" Type="COLLECTION">\r\n                  <Description>(Application)</Description>\r\n                  <Value>\r\n                    <unsignedByte>161</unsignedByte>\r\n                    <unsignedByte>1</unsignedByte>\r\n                  </Value>\r\n                  <Kind>List</Kind>\r\n                </Item>\r\n              </m_value>\r\n              <Value d8p1:type="HIDReportItemDescriptor" xmlns:d8p1="http://www.w3.org/2001/XMLSchema-instance">\r\n                <bDescriptorType>HID_REPORT_ITEM</bDescriptorType>\r\n                <bLength>1</bLength>\r\n                <Item Code="160" Type="COLLECTION">\r\n                  <Description>(Application)</Description>\r\n                  <Value>\r\n                    <unsignedByte>161</unsignedByte>\r\n                    <unsignedByte>1</unsignedByte>\r\n                  </Value>\r\n                  <Kind>List</Kind>\r\n                </Item>\r\n              </Value>\r\n              <Nodes />\r\n            </DescriptorNode>\r\n            <DescriptorNode Key="USBDescriptor839">\r\n              <m_value d8p1:type="HIDReportItemDescriptor" xmlns:d8p1="http://www.w3.org/2001/XMLSchema-instance">\r\n                <bDescriptorType>HID_REPORT_ITEM</bDescriptorType>\r\n                <bLength>1</bLength>\r\n                <Item Code="24" Type="USAGE_MINIMUM">\r\n                  <Description>(1)</Description>\r\n                  <Value>\r\n                    <unsignedByte>25</unsignedByte>\r\n                    <unsignedByte>1</unsignedByte>\r\n                  </Value>\r\n                  <Kind>Int</Kind>\r\n                </Item>\r\n              </m_value>\r\n              <Value d8p1:type="HIDReportItemDescriptor" xmlns:d8p1="http://www.w3.org/2001/XMLSchema-instance">\r\n                <bDescriptorType>HID_REPORT_ITEM</bDescriptorType>\r\n                <bLength>1</bLength>\r\n                <Item Code="24" Type="USAGE_MINIMUM">\r\n                  <Description>(1)</Description>\r\n                  <Value>\r\n                    <unsignedByte>25</unsignedByte>\r\n                    <unsignedByte>1</unsignedByte>\r\n                  </Value>\r\n                  <Kind>Int</Kind>\r\n                </Item>\r\n              </Value>\r\n              <Nodes />\r\n            </DescriptorNode>\r\n            <DescriptorNode Key="USBDescriptor840">\r\n              <m_value d8p1:type="HIDReportItemDescriptor" xmlns:d8p1="http://www.w3.org/2001/XMLSchema-instance">\r\n                <bDescriptorType>HID_REPORT_ITEM</bDescriptorType>\r\n                <bLength>1</bLength>\r\n                <Item Code="40" Type="USAGE_MAXIMUM">\r\n                  <Description>(64)</Description>\r\n                  <Value>\r\n                    <unsignedByte>41</unsignedByte>\r\n                    <unsignedByte>64</unsignedByte>\r\n                  </Value>\r\n                  <Kind>Int</Kind>\r\n                </Item>\r\n              </m_value>\r\n              <Value d8p1:type="HIDReportItemDescriptor" xmlns:d8p1="http://www.w3.org/2001/XMLSchema-instance">\r\n                <bDescriptorType>HID_REPORT_ITEM</bDescriptorType>\r\n                <bLength>1</bLength>\r\n                <Item Code="40" Type="USAGE_MAXIMUM">\r\n                  <Description>(64)</Description>\r\n                  <Value>\r\n                    <unsignedByte>41</unsignedByte>\r\n                    <unsignedByte>64</unsignedByte>\r\n                  </Value>\r\n                  <Kind>Int</Kind>\r\n                </Item>\r\n              </Value>\r\n              <Nodes />\r\n            </DescriptorNode>\r\n            <DescriptorNode Key="USBDescriptor841">\r\n              <m_value d8p1:type="HIDReportItemDescriptor" xmlns:d8p1="http://www.w3.org/2001/XMLSchema-instance">\r\n                <bDescriptorType>HID_REPORT_ITEM</bDescriptorType>\r\n                <bLength>1</bLength>\r\n                <Item Code="20" Type="LOGICAL_MINIMUM">\r\n                  <Description>(0)</Description>\r\n                  <Value>\r\n                    <unsignedByte>21</unsignedByte>\r\n                    <unsignedByte>0</unsignedByte>\r\n                  </Value>\r\n                  <Kind>Int</Kind>\r\n                </Item>\r\n              </m_value>\r\n              <Value d8p1:type="HIDReportItemDescriptor" xmlns:d8p1="http://www.w3.org/2001/XMLSchema-instance">\r\n                <bDescriptorType>HID_REPORT_ITEM</bDescriptorType>\r\n                <bLength>1</bLength>\r\n                <Item Code="20" Type="LOGICAL_MINIMUM">\r\n                  <Description>(0)</Description>\r\n                  <Value>\r\n                    <unsignedByte>21</unsignedByte>\r\n                    <unsignedByte>0</unsignedByte>\r\n                  </Value>\r\n                  <Kind>Int</Kind>\r\n                </Item>\r\n              </Value>\r\n              <Nodes />\r\n            </DescriptorNode>\r\n            <DescriptorNode Key="USBDescriptor842">\r\n              <m_value d8p1:type="HIDReportItemDescriptor" xmlns:d8p1="http://www.w3.org/2001/XMLSchema-instance">\r\n                <bDescriptorType>HID_REPORT_ITEM</bDescriptorType>\r\n                <bLength>1</bLength>\r\n                <Item Code="36" Type="LOGICAL_MAXIMUM">\r\n                  <Description>(255)</Description>\r\n                  <Value>\r\n                    <unsignedByte>38</unsignedByte>\r\n                    <unsignedByte>255</unsignedByte>\r\n                    <unsignedByte>0</unsignedByte>\r\n                  </Value>\r\n                  <Kind>Int</Kind>\r\n                </Item>\r\n              </m_value>\r\n              <Value d8p1:type="HIDReportItemDescriptor" xmlns:d8p1="http://www.w3.org/2001/XMLSchema-instance">\r\n                <bDescriptorType>HID_REPORT_ITEM</bDescriptorType>\r\n                <bLength>1</bLength>\r\n                <Item Code="36" Type="LOGICAL_MAXIMUM">\r\n                  <Description>(255)</Description>\r\n                  <Value>\r\n                    <unsignedByte>38</unsignedByte>\r\n                    <unsignedByte>255</unsignedByte>\r\n                    <unsignedByte>0</unsignedByte>\r\n                  </Value>\r\n                  <Kind>Int</Kind>\r\n                </Item>\r\n              </Value>\r\n              <Nodes />\r\n            </DescriptorNode>\r\n            <DescriptorNode Key="USBDescriptor843">\r\n              <m_value d8p1:type="HIDReportItemDescriptor" xmlns:d8p1="http://www.w3.org/2001/XMLSchema-instance">\r\n                <bDescriptorType>HID_REPORT_ITEM</bDescriptorType>\r\n                <bLength>1</bLength>\r\n                <Item Code="116" Type="REPORT_SIZE">\r\n                  <Description>(8)</Description>\r\n                  <Value>\r\n                    <unsignedByte>117</unsignedByte>\r\n                    <unsignedByte>8</unsignedByte>\r\n                  </Value>\r\n                  <Kind>Int</Kind>\r\n                </Item>\r\n              </m_value>\r\n              <Value d8p1:type="HIDReportItemDescriptor" xmlns:d8p1="http://www.w3.org/2001/XMLSchema-instance">\r\n                <bDescriptorType>HID_REPORT_ITEM</bDescriptorType>\r\n                <bLength>1</bLength>\r\n                <Item Code="116" Type="REPORT_SIZE">\r\n                  <Description>(8)</Description>\r\n                  <Value>\r\n                    <unsignedByte>117</unsignedByte>\r\n                    <unsignedByte>8</unsignedByte>\r\n                  </Value>\r\n                  <Kind>Int</Kind>\r\n                </Item>\r\n              </Value>\r\n              <Nodes />\r\n            </DescriptorNode>\r\n            <DescriptorNode Key="USBDescriptor844">\r\n              <m_value d8p1:type="HIDReportItemDescriptor" xmlns:d8p1="http://www.w3.org/2001/XMLSchema-instance">\r\n                <bDescriptorType>HID_REPORT_ITEM</bDescriptorType>\r\n                <bLength>1</bLength>\r\n                <Item Code="148" Type="REPORT_COUNT">\r\n                  <Description>(64)</Description>\r\n                  <Value>\r\n                    <unsignedByte>149</unsignedByte>\r\n                    <unsignedByte>64</unsignedByte>\r\n                  </Value>\r\n                  <Kind>Int</Kind>\r\n                </Item>\r\n              </m_value>\r\n              <Value d8p1:type="HIDReportItemDescriptor" xmlns:d8p1="http://www.w3.org/2001/XMLSchema-instance">\r\n                <bDescriptorType>HID_REPORT_ITEM</bDescriptorType>\r\n                <bLength>1</bLength>\r\n                <Item Code="148" Type="REPORT_COUNT">\r\n                  <Description>(64)</Description>\r\n                  <Value>\r\n                    <unsignedByte>149</unsignedByte>\r\n                    <unsignedByte>64</unsignedByte>\r\n                  </Value>\r\n                  <Kind>Int</Kind>\r\n                </Item>\r\n              </Value>\r\n              <Nodes />\r\n            </DescriptorNode>\r\n            <DescriptorNode Key="USBDescriptor845">\r\n              <m_value d8p1:type="HIDReportItemDescriptor" xmlns:d8p1="http://www.w3.org/2001/XMLSchema-instance">\r\n                <bDescriptorType>HID_REPORT_ITEM</bDescriptorType>\r\n                <bLength>1</bLength>\r\n                <Item Code="144" Type="OUTPUT">\r\n                  <Description>()</Description>\r\n                  <Value>\r\n                    <unsignedByte>145</unsignedByte>\r\n                    <unsignedByte>0</unsignedByte>\r\n                  </Value>\r\n                  <Kind>Bits</Kind>\r\n                </Item>\r\n              </m_value>\r\n              <Value d8p1:type="HIDReportItemDescriptor" xmlns:d8p1="http://www.w3.org/2001/XMLSchema-instance">\r\n                <bDescriptorType>HID_REPORT_ITEM</bDescriptorType>\r\n                <bLength>1</bLength>\r\n                <Item Code="144" Type="OUTPUT">\r\n                  <Description>()</Description>\r\n                  <Value>\r\n                    <unsignedByte>145</unsignedByte>\r\n                    <unsignedByte>0</unsignedByte>\r\n                  </Value>\r\n                  <Kind>Bits</Kind>\r\n                </Item>\r\n              </Value>\r\n              <Nodes />\r\n            </DescriptorNode>\r\n            <DescriptorNode Key="USBDescriptor846">\r\n              <m_value d8p1:type="HIDReportItemDescriptor" xmlns:d8p1="http://www.w3.org/2001/XMLSchema-instance">\r\n                <bDescriptorType>HID_REPORT_ITEM</bDescriptorType>\r\n                <bLength>1</bLength>\r\n                <Item Code="24" Type="USAGE_MINIMUM">\r\n                  <Description>(1)</Description>\r\n                  <Value>\r\n                    <unsignedByte>25</unsignedByte>\r\n                    <unsignedByte>1</unsignedByte>\r\n                  </Value>\r\n                  <Kind>Int</Kind>\r\n                </Item>\r\n              </m_value>\r\n              <Value d8p1:type="HIDReportItemDescriptor" xmlns:d8p1="http://www.w3.org/2001/XMLSchema-instance">\r\n                <bDescriptorType>HID_REPORT_ITEM</bDescriptorType>\r\n                <bLength>1</bLength>\r\n                <Item Code="24" Type="USAGE_MINIMUM">\r\n                  <Description>(1)</Description>\r\n                  <Value>\r\n                    <unsignedByte>25</unsignedByte>\r\n                    <unsignedByte>1</unsignedByte>\r\n                  </Value>\r\n                  <Kind>Int</Kind>\r\n                </Item>\r\n              </Value>\r\n              <Nodes />\r\n            </DescriptorNode>\r\n            <DescriptorNode Key="USBDescriptor847">\r\n              <m_value d8p1:type="HIDReportItemDescriptor" xmlns:d8p1="http://www.w3.org/2001/XMLSchema-instance">\r\n                <bDescriptorType>HID_REPORT_ITEM</bDescriptorType>\r\n                <bLength>1</bLength>\r\n                <Item Code="40" Type="USAGE_MAXIMUM">\r\n                  <Description>(64)</Description>\r\n                  <Value>\r\n                    <unsignedByte>41</unsignedByte>\r\n                    <unsignedByte>64</unsignedByte>\r\n                  </Value>\r\n                  <Kind>Int</Kind>\r\n                </Item>\r\n              </m_value>\r\n              <Value d8p1:type="HIDReportItemDescriptor" xmlns:d8p1="http://www.w3.org/2001/XMLSchema-instance">\r\n                <bDescriptorType>HID_REPORT_ITEM</bDescriptorType>\r\n                <bLength>1</bLength>\r\n                <Item Code="40" Type="USAGE_MAXIMUM">\r\n                  <Description>(64)</Description>\r\n                  <Value>\r\n                    <unsignedByte>41</unsignedByte>\r\n                    <unsignedByte>64</unsignedByte>\r\n                  </Value>\r\n                  <Kind>Int</Kind>\r\n                </Item>\r\n              </Value>\r\n              <Nodes />\r\n            </DescriptorNode>\r\n            <DescriptorNode Key="USBDescriptor848">\r\n              <m_value d8p1:type="HIDReportItemDescriptor" xmlns:d8p1="http://www.w3.org/2001/XMLSchema-instance">\r\n                <bDescriptorType>HID_REPORT_ITEM</bDescriptorType>\r\n                <bLength>1</bLength>\r\n                <Item Code="20" Type="LOGICAL_MINIMUM">\r\n                  <Description>(0)</Description>\r\n                  <Value>\r\n                    <unsignedByte>21</unsignedByte>\r\n                    <unsignedByte>0</unsignedByte>\r\n                  </Value>\r\n                  <Kind>Int</Kind>\r\n                </Item>\r\n              </m_value>\r\n              <Value d8p1:type="HIDReportItemDescriptor" xmlns:d8p1="http://www.w3.org/2001/XMLSchema-instance">\r\n                <bDescriptorType>HID_REPORT_ITEM</bDescriptorType>\r\n                <bLength>1</bLength>\r\n                <Item Code="20" Type="LOGICAL_MINIMUM">\r\n                  <Description>(0)</Description>\r\n                  <Value>\r\n                    <unsignedByte>21</unsignedByte>\r\n                    <unsignedByte>0</unsignedByte>\r\n                  </Value>\r\n                  <Kind>Int</Kind>\r\n                </Item>\r\n              </Value>\r\n              <Nodes />\r\n            </DescriptorNode>\r\n            <DescriptorNode Key="USBDescriptor849">\r\n              <m_value d8p1:type="HIDReportItemDescriptor" xmlns:d8p1="http://www.w3.org/2001/XMLSchema-instance">\r\n                <bDescriptorType>HID_REPORT_ITEM</bDescriptorType>\r\n                <bLength>1</bLength>\r\n                <Item Code="36" Type="LOGICAL_MAXIMUM">\r\n                  <Description>(255)</Description>\r\n                  <Value>\r\n                    <unsignedByte>38</unsignedByte>\r\n                    <unsignedByte>255</unsignedByte>\r\n                    <unsignedByte>0</unsignedByte>\r\n                  </Value>\r\n                  <Kind>Int</Kind>\r\n                </Item>\r\n              </m_value>\r\n              <Value d8p1:type="HIDReportItemDescriptor" xmlns:d8p1="http://www.w3.org/2001/XMLSchema-instance">\r\n                <bDescriptorType>HID_REPORT_ITEM</bDescriptorType>\r\n                <bLength>1</bLength>\r\n                <Item Code="36" Type="LOGICAL_MAXIMUM">\r\n                  <Description>(255)</Description>\r\n                  <Value>\r\n                    <unsignedByte>38</unsignedByte>\r\n                    <unsignedByte>255</unsignedByte>\r\n                    <unsignedByte>0</unsignedByte>\r\n                  </Value>\r\n                  <Kind>Int</Kind>\r\n                </Item>\r\n              </Value>\r\n              <Nodes />\r\n            </DescriptorNode>\r\n            <DescriptorNode Key="USBDescriptor850">\r\n              <m_value d8p1:type="HIDReportItemDescriptor" xmlns:d8p1="http://www.w3.org/2001/XMLSchema-instance">\r\n                <bDescriptorType>HID_REPORT_ITEM</bDescriptorType>\r\n                <bLength>1</bLength>\r\n                <Item Code="116" Type="REPORT_SIZE">\r\n                  <Description>(8)</Description>\r\n                  <Value>\r\n                    <unsignedByte>117</unsignedByte>\r\n                    <unsignedByte>8</unsignedByte>\r\n                  </Value>\r\n                  <Kind>Int</Kind>\r\n                </Item>\r\n              </m_value>\r\n              <Value d8p1:type="HIDReportItemDescriptor" xmlns:d8p1="http://www.w3.org/2001/XMLSchema-instance">\r\n                <bDescriptorType>HID_REPORT_ITEM</bDescriptorType>\r\n                <bLength>1</bLength>\r\n                <Item Code="116" Type="REPORT_SIZE">\r\n                  <Description>(8)</Description>\r\n                  <Value>\r\n                    <unsignedByte>117</unsignedByte>\r\n                    <unsignedByte>8</unsignedByte>\r\n                  </Value>\r\n                  <Kind>Int</Kind>\r\n                </Item>\r\n              </Value>\r\n              <Nodes />\r\n            </DescriptorNode>\r\n            <DescriptorNode Key="USBDescriptor851">\r\n              <m_value d8p1:type="HIDReportItemDescriptor" xmlns:d8p1="http://www.w3.org/2001/XMLSchema-instance">\r\n                <bDescriptorType>HID_REPORT_ITEM</bDescriptorType>\r\n                <bLength>1</bLength>\r\n                <Item Code="148" Type="REPORT_COUNT">\r\n                  <Description>(64)</Description>\r\n                  <Value>\r\n                    <unsignedByte>149</unsignedByte>\r\n                    <unsignedByte>64</unsignedByte>\r\n                  </Value>\r\n                  <Kind>Int</Kind>\r\n                </Item>\r\n              </m_value>\r\n              <Value d8p1:type="HIDReportItemDescriptor" xmlns:d8p1="http://www.w3.org/2001/XMLSchema-instance">\r\n                <bDescriptorType>HID_REPORT_ITEM</bDescriptorType>\r\n                <bLength>1</bLength>\r\n                <Item Code="148" Type="REPORT_COUNT">\r\n                  <Description>(64)</Description>\r\n                  <Value>\r\n                    <unsignedByte>149</unsignedByte>\r\n                    <unsignedByte>64</unsignedByte>\r\n                  </Value>\r\n                  <Kind>Int</Kind>\r\n                </Item>\r\n              </Value>\r\n              <Nodes />\r\n            </DescriptorNode>\r\n            <DescriptorNode Key="USBDescriptor852">\r\n              <m_value d8p1:type="HIDReportItemDescriptor" xmlns:d8p1="http://www.w3.org/2001/XMLSchema-instance">\r\n                <bDescriptorType>HID_REPORT_ITEM</bDescriptorType>\r\n                <bLength>1</bLength>\r\n                <Item Code="128" Type="INPUT">\r\n                  <Description>()</Description>\r\n                  <Value>\r\n                    <unsignedByte>129</unsignedByte>\r\n                    <unsignedByte>0</unsignedByte>\r\n                  </Value>\r\n                  <Kind>Bits</Kind>\r\n                </Item>\r\n              </m_value>\r\n              <Value d8p1:type="HIDReportItemDescriptor" xmlns:d8p1="http://www.w3.org/2001/XMLSchema-instance">\r\n                <bDescriptorType>HID_REPORT_ITEM</bDescriptorType>\r\n                <bLength>1</bLength>\r\n                <Item Code="128" Type="INPUT">\r\n                  <Description>()</Description>\r\n                  <Value>\r\n                    <unsignedByte>129</unsignedByte>\r\n                    <unsignedByte>0</unsignedByte>\r\n                  </Value>\r\n                  <Kind>Bits</Kind>\r\n                </Item>\r\n              </Value>\r\n              <Nodes />\r\n            </DescriptorNode>\r\n            <DescriptorNode Key="USBDescriptor853">\r\n              <m_value d8p1:type="HIDReportItemDescriptor" xmlns:d8p1="http://www.w3.org/2001/XMLSchema-instance">\r\n                <bDescriptorType>HID_REPORT_ITEM</bDescriptorType>\r\n                <bLength>1</bLength>\r\n                <Item Code="192" Type="END_COLLECTION">\r\n                  <Description />\r\n                  <Value>\r\n                    <unsignedByte>192</unsignedByte>\r\n                    <unsignedByte>0</unsignedByte>\r\n                  </Value>\r\n                  <Kind>None</Kind>\r\n                </Item>\r\n              </m_value>\r\n              <Value d8p1:type="HIDReportItemDescriptor" xmlns:d8p1="http://www.w3.org/2001/XMLSchema-instance">\r\n                <bDescriptorType>HID_REPORT_ITEM</bDescriptorType>\r\n                <bLength>1</bLength>\r\n                <Item Code="192" Type="END_COLLECTION">\r\n                  <Description />\r\n                  <Value>\r\n                    <unsignedByte>192</unsignedByte>\r\n                    <unsignedByte>0</unsignedByte>\r\n                  </Value>\r\n                  <Kind>None</Kind>\r\n                </Item>\r\n              </Value>\r\n              <Nodes />\r\n            </DescriptorNode>\r\n          </Nodes>\r\n        </DescriptorNode>\r\n      </Nodes>\r\n    </DescriptorNode>\r\n  </Tree_x0020_Descriptors>\r\n</Tree>, isrGroupArbiter=0, isrGroupBusReset=2, isrGroupEp0=1, isrGroupEp1=1, isrGroupEp2=1, isrGroupEp3=1, isrGroupEp4=1, isrGroupEp5=1, isrGroupEp6=1, isrGroupEp7=1, isrGroupEp8=1, isrGroupLpm=0, isrGroupSof=2, M0S8USBDSS_BLOCK_COUNT_1=0, max_interfaces_num=1, MidiDescriptors=<?xml version="1.0" encoding="utf-16"?>\r\n<Tree xmlns:CustomizerVersion="3_10">\r\n  <Tree_x0020_Descriptors>\r\n    <DescriptorNode Key="Midi">\r\n      <Nodes />\r\n    </DescriptorNode>\r\n  </Tree_x0020_Descriptors>\r\n</Tree>, Mode=false, mon_vbus=false, MscDescriptors=, MscLogicalUnitsNum=1, out_sof=false, Pid=F232, powerpad_vbus=false, PRIMITIVE_INSTANCE=USB, ProdactName=, ProdactRevision=, REG_SIZE=reg8, RemoveDmaAutoOpt=true, RemoveVbusPin=true, rm_arb_int=false, rm_dma_1=true, rm_dma_2=true, rm_dma_3=true, rm_dma_4=true, rm_dma_5=true, rm_dma_6=true, rm_dma_7=true, rm_dma_8=true, rm_dp_int=false, rm_ep_isr_0=false, rm_ep_isr_1=false, rm_ep_isr_2=false, rm_ep_isr_3=true, rm_ep_isr_4=true, rm_ep_isr_5=true, rm_ep_isr_6=true, rm_ep_isr_7=true, rm_ep_isr_8=true, rm_lpm_int=true, rm_ord_int=true, rm_sof_int=false, rm_usb_int=false, SofTermEnable=false, StringDescriptors=<?xml version="1.0" encoding="utf-16"?>\r\n<Tree xmlns:CustomizerVersion="3_10">\r\n  <Tree_x0020_Descriptors>\r\n    <DescriptorNode Key="String">\r\n      <Nodes>\r\n        <DescriptorNode Key="LANGID">\r\n          <m_value d6p1:type="StringZeroDescriptor" xmlns:d6p1="http://www.w3.org/2001/XMLSchema-instance">\r\n            <bDescriptorType>STRING</bDescriptorType>\r\n            <bLength>4</bLength>\r\n            <wLANGID>1033</wLANGID>\r\n          </m_value>\r\n          <Value d6p1:type="StringZeroDescriptor" xmlns:d6p1="http://www.w3.org/2001/XMLSchema-instance">\r\n            <bDescriptorType>STRING</bDescriptorType>\r\n            <bLength>4</bLength>\r\n            <wLANGID>1033</wLANGID>\r\n          </Value>\r\n          <Nodes />\r\n        </DescriptorNode>\r\n        <DescriptorNode Key="USBDescriptor965">\r\n          <m_value d6p1:type="StringDescriptor" xmlns:d6p1="http://www.w3.org/2001/XMLSchema-instance">\r\n            <bDescriptorType>STRING</bDescriptorType>\r\n            <bLength>24</bLength>\r\n            <snType>USER_ENTERED_TEXT</snType>\r\n            <bString>Generic HID</bString>\r\n            <bUsed>false</bUsed>\r\n          </m_value>\r\n          <Value d6p1:type="StringDescriptor" xmlns:d6p1="http://www.w3.org/2001/XMLSchema-instance">\r\n            <bDescriptorType>STRING</bDescriptorType>\r\n            <bLength>24</bLength>\r\n            <snType>USER_ENTERED_TEXT</snType>\r\n            <bString>Generic HID</bString>\r\n            <bUsed>false</bUsed>\r\n          </Value>\r\n          <Nodes />\r\n        </DescriptorNode>\r\n        <DescriptorNode Key="USBDescriptor966">\r\n          <m_value d6p1:type="StringDescriptor" xmlns:d6p1="http://www.w3.org/2001/XMLSchema-instance">\r\n            <bDescriptorType>STRING</bDescriptorType>\r\n            <bLength>10</bLength>\r\n            <snType>USER_ENTERED_TEXT</snType>\r\n            <bString>None</bString>\r\n            <bUsed>false</bUsed>\r\n          </m_value>\r\n          <Value d6p1:type="StringDescriptor" xmlns:d6p1="http://www.w3.org/2001/XMLSchema-instance">\r\n            <bDescriptorType>STRING</bDescriptorType>\r\n            <bLength>10</bLength>\r\n            <snType>USER_ENTERED_TEXT</snType>\r\n            <bString>None</bString>\r\n            <bUsed>false</bUsed>\r\n          </Value>\r\n          <Nodes />\r\n        </DescriptorNode>\r\n        <DescriptorNode Key="USBDescriptor967">\r\n          <m_value d6p1:type="StringDescriptor" xmlns:d6p1="http://www.w3.org/2001/XMLSchema-instance">\r\n            <bDescriptorType>STRING</bDescriptorType>\r\n            <bLength>30</bLength>\r\n            <snType>USER_ENTERED_TEXT</snType>\r\n            <bString>Stepper Module</bString>\r\n            <bUsed>false</bUsed>\r\n          </m_value>\r\n          <Value d6p1:type="StringDescriptor" xmlns:d6p1="http://www.w3.org/2001/XMLSchema-instance">\r\n            <bDescriptorType>STRING</bDescriptorType>\r\n            <bLength>30</bLength>\r\n            <snType>USER_ENTERED_TEXT</snType>\r\n            <bString>Stepper Module</bString>\r\n            <bUsed>false</bUsed>\r\n          </Value>\r\n          <Nodes />\r\n        </DescriptorNode>\r\n        <DescriptorNode Key="USBDescriptor968">\r\n          <m_value d6p1:type="StringDescriptor" xmlns:d6p1="http://www.w3.org/2001/XMLSchema-instance">\r\n            <bDescriptorType>STRING</bDescriptorType>\r\n            <bLength>38</bLength>\r\n            <snType>USER_ENTERED_TEXT</snType>\r\n            <bString>Stepper Module HID</bString>\r\n            <bUsed>false</bUsed>\r\n          </m_value>\r\n          <Value d6p1:type="StringDescriptor" xmlns:d6p1="http://www.w3.org/2001/XMLSchema-instance">\r\n            <bDescriptorType>STRING</bDescriptorType>\r\n            <bLength>38</bLength>\r\n            <snType>USER_ENTERED_TEXT</snType>\r\n            <bString>Stepper Module HID</bString>\r\n            <bUsed>false</bUsed>\r\n          </Value>\r\n          <Nodes />\r\n        </DescriptorNode>\r\n      </Nodes>\r\n    </DescriptorNode>\r\n    <DescriptorNode Key="SpecialString">\r\n      <Nodes>\r\n        <DescriptorNode Key="Serial">\r\n          <m_value d6p1:type="StringDescriptor" xmlns:d6p1="http://www.w3.org/2001/XMLSchema-instance">\r\n            <bDescriptorType>STRING</bDescriptorType>\r\n            <bLength>2</bLength>\r\n            <snType>USER_ENTERED_TEXT</snType>\r\n            <bUsed>false</bUsed>\r\n          </m_value>\r\n          <Value d6p1:type="StringDescriptor" xmlns:d6p1="http://www.w3.org/2001/XMLSchema-instance">\r\n            <bDescriptorType>STRING</bDescriptorType>\r\n            <bLength>2</bLength>\r\n            <snType>USER_ENTERED_TEXT</snType>\r\n            <bUsed>false</bUsed>\r\n          </Value>\r\n          <Nodes />\r\n        </DescriptorNode>\r\n        <DescriptorNode Key="EE">\r\n          <m_value d6p1:type="StringDescriptor" xmlns:d6p1="http://www.w3.org/2001/XMLSchema-instance">\r\n            <bDescriptorType>STRING</bDescriptorType>\r\n            <bLength>16</bLength>\r\n            <snType>USER_ENTERED_TEXT</snType>\r\n            <bString>MSFT100</bString>\r\n            <bUsed>false</bUsed>\r\n          </m_value>\r\n          <Value d6p1:type="StringDescriptor" xmlns:d6p1="http://www.w3.org/2001/XMLSchema-instance">\r\n            <bDescriptorType>STRING</bDescriptorType>\r\n            <bLength>16</bLength>\r\n            <snType>USER_ENTERED_TEXT</snType>\r\n            <bString>MSFT100</bString>\r\n            <bUsed>false</bUsed>\r\n          </Value>\r\n          <Nodes />\r\n        </DescriptorNode>\r\n      </Nodes>\r\n    </DescriptorNode>\r\n  </Tree_x0020_Descriptors>\r\n</Tree>, UINT_TYPE=uint8, VbusDetectTermEnable=false, VendorName=, Vid=04B4, CY_API_CALLBACK_HEADER_INCLUDE=#include "cyapicallbacks.h", CY_COMMENT=, CY_COMPONENT_NAME=USBFS_v3_10, CY_CONST_CONFIG=true, CY_CONTROL_FILE=<:default:>, CY_DATASHEET_FILE=<:default:>, CY_FITTER_NAME=USBFS, CY_INSTANCE_SHORT_NAME=USBFS, CY_MAJOR_VERSION=3, CY_MINOR_VERSION=10, CY_PDL_DRIVER_NAME=, CY_PDL_DRIVER_REQ_VERSION=, CY_PDL_DRIVER_SUBGROUP=, CY_PDL_DRIVER_VARIANT=, CY_REMOVE=false, CY_SUPPRESS_API_GEN=false, CY_VERSION=PSoC Creator  4.1 Update 1, INSTANCE_NAME=USBFS, )
module USBFS_v3_10_1 (
    sof,
    vbusdet);
    output      sof;
    input       vbusdet;

    parameter epDMAautoOptimization = 0;

          wire  Net_1914;
          wire  Net_1915;
          wire  Net_1916;
          wire  Net_1917;
          wire  Net_1918;
          wire  Net_1919;
          wire [7:0] dma_request;
          wire  Net_1920;
          wire  Net_1921;
          wire  Net_1922;
          wire [7:0] Net_2039;
          wire  Net_2038;
          wire  Net_2037;
          wire  EPs_1_to_7_dma_complete;
          wire  Net_2036;
          wire  Net_2035;
          wire  Net_2034;
          wire  Net_2033;
          wire  Net_2032;
          wire  Net_2031;
          wire  Net_2030;
          wire  Net_2029;
          wire  Net_2028;
          wire  Net_2027;
          wire  Net_2026;
          wire  Net_2025;
          wire  Net_2024;
          wire [7:0] Net_1940;
          wire  Net_1939;
          wire  Net_1938;
          wire  Net_1937;
          wire  Net_1936;
          wire  Net_1935;
          wire  Net_1934;
          wire  Net_1933;
          wire  Net_1932;
          wire  Net_2047;
          wire  Net_1202;
          wire  dma_terminate;
          wire [7:0] Net_2040;
          wire  Net_1010;
    electrical  Net_1000;
    electrical  Net_597;
          wire  Net_1495;
          wire  Net_1498;
          wire  Net_1559;
          wire  Net_1567;
          wire  Net_1576;
          wire  Net_1579;
          wire  Net_1591;
          wire [7:0] dma_complete;
          wire  Net_1588;
          wire  Net_1876;
          wire [8:0] ep_int;
          wire  Net_1889;
          wire  busClk;
          wire  Net_95;


	cy_isr_v1_0
		#(.int_type(2'b10))
		dp_int
		 (.int_signal(Net_1010));


	wire [0:0] tmpOE__Dm_net;
	wire [0:0] tmpFB_0__Dm_net;
	wire [0:0] tmpIO_0__Dm_net;
	wire [0:0] tmpINTERRUPT_0__Dm_net;
	electrical [0:0] tmpSIOVREF__Dm_net;

	cy_psoc3_pins_v1_10
		#(.id("2d31bd3e-2597-41fa-8b4a-88a5f50e8a28/8b77a6c4-10a0-4390-971c-672353e2a49c"),
		  .drive_mode(3'b000),
		  .ibuf_enabled(1'b0),
		  .init_dr_st(1'b0),
		  .input_clk_en(0),
		  .input_sync(1'b1),
		  .input_sync_mode(1'b0),
		  .intr_mode(2'b00),
		  .invert_in_clock(0),
		  .invert_in_clock_en(0),
		  .invert_in_reset(0),
		  .invert_out_clock(0),
		  .invert_out_clock_en(0),
		  .invert_out_reset(0),
		  .io_voltage(""),
		  .layout_mode("NONCONTIGUOUS"),
		  .oe_conn(1'b0),
		  .oe_reset(0),
		  .oe_sync(1'b0),
		  .output_clk_en(0),
		  .output_clock_mode(1'b0),
		  .output_conn(1'b0),
		  .output_mode(1'b0),
		  .output_reset(0),
		  .output_sync(1'b0),
		  .pa_in_clock(-1),
		  .pa_in_clock_en(-1),
		  .pa_in_reset(-1),
		  .pa_out_clock(-1),
		  .pa_out_clock_en(-1),
		  .pa_out_reset(-1),
		  .pin_aliases(""),
		  .pin_mode("A"),
		  .por_state(4),
		  .sio_group_cnt(0),
		  .sio_hyst(1'b1),
		  .sio_ibuf(""),
		  .sio_info(2'b00),
		  .sio_obuf(""),
		  .sio_refsel(""),
		  .sio_vtrip(""),
		  .sio_hifreq(""),
		  .sio_vohsel(""),
		  .slew_rate(1'b0),
		  .spanning(1),
		  .use_annotation(1'b0),
		  .vtrip(2'b10),
		  .width(1),
		  .ovt_hyst_trim(1'b0),
		  .ovt_needed(1'b0),
		  .ovt_slew_control(2'b00),
		  .input_buffer_sel(2'b00))
		Dm
		 (.oe(tmpOE__Dm_net),
		  .y({1'b0}),
		  .fb({tmpFB_0__Dm_net[0:0]}),
		  .analog({Net_597}),
		  .io({tmpIO_0__Dm_net[0:0]}),
		  .siovref(tmpSIOVREF__Dm_net),
		  .interrupt({tmpINTERRUPT_0__Dm_net[0:0]}),
		  .in_clock({1'b0}),
		  .in_clock_en({1'b1}),
		  .in_reset({1'b0}),
		  .out_clock({1'b0}),
		  .out_clock_en({1'b1}),
		  .out_reset({1'b0}));

	assign tmpOE__Dm_net = (`CYDEV_CHIP_MEMBER_USED == `CYDEV_CHIP_MEMBER_3A && `CYDEV_CHIP_REVISION_USED < `CYDEV_CHIP_REVISION_3A_ES3) ? ~{1'b1} : {1'b1};

	wire [0:0] tmpOE__Dp_net;
	wire [0:0] tmpFB_0__Dp_net;
	wire [0:0] tmpIO_0__Dp_net;
	electrical [0:0] tmpSIOVREF__Dp_net;

	cy_psoc3_pins_v1_10
		#(.id("2d31bd3e-2597-41fa-8b4a-88a5f50e8a28/618a72fc-5ddd-4df5-958f-a3d55102db42"),
		  .drive_mode(3'b000),
		  .ibuf_enabled(1'b0),
		  .init_dr_st(1'b1),
		  .input_clk_en(0),
		  .input_sync(1'b1),
		  .input_sync_mode(1'b0),
		  .intr_mode(2'b10),
		  .invert_in_clock(0),
		  .invert_in_clock_en(0),
		  .invert_in_reset(0),
		  .invert_out_clock(0),
		  .invert_out_clock_en(0),
		  .invert_out_reset(0),
		  .io_voltage(""),
		  .layout_mode("CONTIGUOUS"),
		  .oe_conn(1'b0),
		  .oe_reset(0),
		  .oe_sync(1'b0),
		  .output_clk_en(0),
		  .output_clock_mode(1'b0),
		  .output_conn(1'b0),
		  .output_mode(1'b0),
		  .output_reset(0),
		  .output_sync(1'b0),
		  .pa_in_clock(-1),
		  .pa_in_clock_en(-1),
		  .pa_in_reset(-1),
		  .pa_out_clock(-1),
		  .pa_out_clock_en(-1),
		  .pa_out_reset(-1),
		  .pin_aliases(""),
		  .pin_mode("I"),
		  .por_state(4),
		  .sio_group_cnt(0),
		  .sio_hyst(1'b1),
		  .sio_ibuf(""),
		  .sio_info(2'b00),
		  .sio_obuf(""),
		  .sio_refsel(""),
		  .sio_vtrip(""),
		  .sio_hifreq(""),
		  .sio_vohsel(""),
		  .slew_rate(1'b0),
		  .spanning(0),
		  .use_annotation(1'b0),
		  .vtrip(2'b00),
		  .width(1),
		  .ovt_hyst_trim(1'b0),
		  .ovt_needed(1'b0),
		  .ovt_slew_control(2'b00),
		  .input_buffer_sel(2'b00))
		Dp
		 (.oe(tmpOE__Dp_net),
		  .y({1'b0}),
		  .fb({tmpFB_0__Dp_net[0:0]}),
		  .analog({Net_1000}),
		  .io({tmpIO_0__Dp_net[0:0]}),
		  .siovref(tmpSIOVREF__Dp_net),
		  .interrupt({Net_1010}),
		  .in_clock({1'b0}),
		  .in_clock_en({1'b1}),
		  .in_reset({1'b0}),
		  .out_clock({1'b0}),
		  .out_clock_en({1'b1}),
		  .out_reset({1'b0}));

	assign tmpOE__Dp_net = (`CYDEV_CHIP_MEMBER_USED == `CYDEV_CHIP_MEMBER_3A && `CYDEV_CHIP_REVISION_USED < `CYDEV_CHIP_REVISION_3A_ES3) ? ~{1'b1} : {1'b1};

    cy_psoc3_usb_v1_0 USB (
        .dp(Net_1000),
        .dm(Net_597),
        .sof_int(sof),
        .arb_int(Net_1889),
        .usb_int(Net_1876),
        .ept_int(ep_int[8:0]),
        .ord_int(Net_95),
        .dma_req(dma_request[7:0]),
        .dma_termin(dma_terminate));


	cy_isr_v1_0
		#(.int_type(2'b10))
		ep_2
		 (.int_signal(ep_int[2]));



	cy_isr_v1_0
		#(.int_type(2'b10))
		ep_1
		 (.int_signal(ep_int[1]));



	cy_isr_v1_0
		#(.int_type(2'b10))
		ep_0
		 (.int_signal(ep_int[0]));



	cy_isr_v1_0
		#(.int_type(2'b10))
		bus_reset
		 (.int_signal(Net_1876));



	cy_isr_v1_0
		#(.int_type(2'b10))
		arb_int
		 (.int_signal(Net_1889));



	cy_isr_v1_0
		#(.int_type(2'b10))
		sof_int
		 (.int_signal(sof));


	// VirtualMux_1 (cy_virtualmux_v1_0)
	assign dma_complete[0] = Net_1922;

    ZeroTerminal ZeroTerminal_1 (
        .z(Net_1922));

	// VirtualMux_2 (cy_virtualmux_v1_0)
	assign dma_complete[1] = Net_1921;

    ZeroTerminal ZeroTerminal_2 (
        .z(Net_1921));

	// VirtualMux_3 (cy_virtualmux_v1_0)
	assign dma_complete[2] = Net_1920;

    ZeroTerminal ZeroTerminal_3 (
        .z(Net_1920));

	// VirtualMux_4 (cy_virtualmux_v1_0)
	assign dma_complete[3] = Net_1919;

    ZeroTerminal ZeroTerminal_4 (
        .z(Net_1919));

	// VirtualMux_5 (cy_virtualmux_v1_0)
	assign dma_complete[4] = Net_1918;

	// VirtualMux_6 (cy_virtualmux_v1_0)
	assign dma_complete[5] = Net_1917;

    ZeroTerminal ZeroTerminal_5 (
        .z(Net_1918));

    ZeroTerminal ZeroTerminal_6 (
        .z(Net_1917));

	// VirtualMux_7 (cy_virtualmux_v1_0)
	assign dma_complete[6] = Net_1916;

	// VirtualMux_8 (cy_virtualmux_v1_0)
	assign dma_complete[7] = Net_1915;

    ZeroTerminal ZeroTerminal_7 (
        .z(Net_1916));

    ZeroTerminal ZeroTerminal_8 (
        .z(Net_1915));



endmodule

// Component: cy_sync_v1_0
`ifdef CY_BLK_DIR
`undef CY_BLK_DIR
`endif

`ifdef WARP
`define CY_BLK_DIR "C:\Program Files (x86)\Cypress\PSoC Creator\4.1\PSoC Creator\psoc\content\CyPrimitives\cyprimitives.cylib\cy_sync_v1_0"
`include "C:\Program Files (x86)\Cypress\PSoC Creator\4.1\PSoC Creator\psoc\content\CyPrimitives\cyprimitives.cylib\cy_sync_v1_0\cy_sync_v1_0.v"
`else
`define CY_BLK_DIR "C:\Program Files (x86)\Cypress\PSoC Creator\4.1\PSoC Creator\psoc\content\CyPrimitives\cyprimitives.cylib\cy_sync_v1_0"
`include "C:\Program Files (x86)\Cypress\PSoC Creator\4.1\PSoC Creator\psoc\content\CyPrimitives\cyprimitives.cylib\cy_sync_v1_0\cy_sync_v1_0.v"
`endif

// top
module top ;

          wire  Net_1640;
          wire  Net_1588;
          wire  Net_1587;
          wire  Net_1586;
          wire  Net_1585;
          wire  Net_1584;
          wire  Net_1583;
          wire  Net_1582;
          wire  Net_1581;
          wire  Net_1619;
          wire  Net_1629;
          wire  Net_1644;
          wire  Net_1643;
          wire  Net_1596;
          wire  Net_1446;
          wire  Net_1445;
          wire  Net_1444;
          wire  Net_1443;
          wire  Net_1442;
          wire  Net_1441;
          wire  Net_1440;
          wire  Net_1439;
          wire  Net_1437;
          wire  Net_1468;
          wire  Net_1467;
          wire  Net_1466;
          wire  Net_1465;
          wire  Net_1590;
          wire  Net_1209;
          wire  Net_1208;
          wire  Net_1576;
          wire  Net_1566;
          wire  Net_1555;
          wire  Net_1114;
          wire  Net_1447;
          wire  Net_82;
          wire  Net_1116;

    Timer_v2_70_0 Timer1 (
        .reset(Net_82),
        .interrupt(Net_1590),
        .enable(1'b1),
        .trigger(1'b1),
        .capture(1'b0),
        .capture_out(Net_1468),
        .tc(Net_1576),
        .clock(Net_1116));
    defparam Timer1.CaptureCount = 2;
    defparam Timer1.CaptureCounterEnabled = 0;
    defparam Timer1.DeviceFamily = "PSoC5";
    defparam Timer1.InterruptOnCapture = 0;
    defparam Timer1.InterruptOnTC = 0;
    defparam Timer1.Resolution = 32;
    defparam Timer1.SiliconRevision = "0";

    assign Net_1447 = 1'h0;

    // -- DFF Start --
    reg  cydff_1;
    always @(posedge Net_82 or posedge Net_1576)
    begin
        if (Net_82)
        begin
            cydff_1 <= ~0;
        end
        else
        begin
            cydff_1 <= Net_1447;
        end
    end
    assign Net_1555 = cydff_1;
    // -- DFF End --


    assign Net_1437 = Net_1116 & Net_1114;

    CyControlReg_v1_80 TrigPulseTrain (
        .control_1(Net_1439),
        .control_2(Net_1440),
        .control_3(Net_1441),
        .control_0(Net_82),
        .control_4(Net_1442),
        .control_5(Net_1443),
        .control_6(Net_1444),
        .control_7(Net_1445),
        .clock(Net_1116),
        .reset(1'b0));
    defparam TrigPulseTrain.Bit0Mode = 3;
    defparam TrigPulseTrain.Bit1Mode = 0;
    defparam TrigPulseTrain.Bit2Mode = 0;
    defparam TrigPulseTrain.Bit3Mode = 0;
    defparam TrigPulseTrain.Bit4Mode = 0;
    defparam TrigPulseTrain.Bit5Mode = 0;
    defparam TrigPulseTrain.Bit6Mode = 0;
    defparam TrigPulseTrain.Bit7Mode = 0;
    defparam TrigPulseTrain.BitValue = 0;
    defparam TrigPulseTrain.BusDisplay = 0;
    defparam TrigPulseTrain.ExtrReset = 1;
    defparam TrigPulseTrain.NumOutputs = 1;


	cy_clock_v1_0
		#(.id("3d53fc79-4c9b-4669-955d-b4537664067a"),
		  .source_clock_id("315365C3-2E3E-4f04-84A2-BB564A173261"),
		  .divisor(0),
		  .period("5000000000000"),
		  .is_direct(0),
		  .is_digital(1))
		Clock_1
		 (.clock_out(Net_1208));


	wire [0:0] tmpOE__PulseTrainOut_net;
	wire [0:0] tmpFB_0__PulseTrainOut_net;
	wire [0:0] tmpIO_0__PulseTrainOut_net;
	wire [0:0] tmpINTERRUPT_0__PulseTrainOut_net;
	electrical [0:0] tmpSIOVREF__PulseTrainOut_net;

	cy_psoc3_pins_v1_10
		#(.id("e851a3b9-efb8-48be-bbb8-b303b216c393"),
		  .drive_mode(3'b110),
		  .ibuf_enabled(1'b1),
		  .init_dr_st(1'b0),
		  .input_clk_en(0),
		  .input_sync(1'b1),
		  .input_sync_mode(1'b0),
		  .intr_mode(2'b00),
		  .invert_in_clock(0),
		  .invert_in_clock_en(0),
		  .invert_in_reset(0),
		  .invert_out_clock(0),
		  .invert_out_clock_en(0),
		  .invert_out_reset(0),
		  .io_voltage(""),
		  .layout_mode("CONTIGUOUS"),
		  .oe_conn(1'b0),
		  .oe_reset(0),
		  .oe_sync(1'b0),
		  .output_clk_en(0),
		  .output_clock_mode(1'b0),
		  .output_conn(1'b1),
		  .output_mode(1'b0),
		  .output_reset(0),
		  .output_sync(1'b0),
		  .pa_in_clock(-1),
		  .pa_in_clock_en(-1),
		  .pa_in_reset(-1),
		  .pa_out_clock(-1),
		  .pa_out_clock_en(-1),
		  .pa_out_reset(-1),
		  .pin_aliases(""),
		  .pin_mode("O"),
		  .por_state(4),
		  .sio_group_cnt(0),
		  .sio_hyst(1'b1),
		  .sio_ibuf(""),
		  .sio_info(2'b00),
		  .sio_obuf(""),
		  .sio_refsel(""),
		  .sio_vtrip(""),
		  .slew_rate(1'b0),
		  .spanning(0),
		  .use_annotation(1'b0),
		  .vtrip(2'b10),
		  .width(1),
		  .ovt_hyst_trim(1'b0),
		  .ovt_needed(1'b0),
		  .ovt_slew_control(2'b00),
		  .input_buffer_sel(2'b00))
		PulseTrainOut
		 (.oe(tmpOE__PulseTrainOut_net),
		  .y({Net_1437}),
		  .fb({tmpFB_0__PulseTrainOut_net[0:0]}),
		  .io({tmpIO_0__PulseTrainOut_net[0:0]}),
		  .siovref(tmpSIOVREF__PulseTrainOut_net),
		  .interrupt({tmpINTERRUPT_0__PulseTrainOut_net[0:0]}),
		  .in_clock({1'b0}),
		  .in_clock_en({1'b1}),
		  .in_reset({1'b0}),
		  .out_clock({1'b0}),
		  .out_clock_en({1'b1}),
		  .out_reset({1'b0}));

	assign tmpOE__PulseTrainOut_net = (`CYDEV_CHIP_MEMBER_USED == `CYDEV_CHIP_MEMBER_3A && `CYDEV_CHIP_REVISION_USED < `CYDEV_CHIP_REVISION_3A_ES3) ? ~{1'b1} : {1'b1};


    assign Net_1566 = ~Net_1116;

    // -- DFF Start --
    reg  cydff_2;
    always @(posedge Net_1566)
    begin
        cydff_2 <= Net_1555;
    end
    assign Net_1114 = cydff_2;
    // -- DFF End --

    USBFS_v3_10_1 USBFS (
        .sof(Net_1643),
        .vbusdet(1'b0));
    defparam USBFS.epDMAautoOptimization = 0;

	wire [0:0] tmpOE__Enable_net;
	wire [0:0] tmpFB_0__Enable_net;
	wire [0:0] tmpIO_0__Enable_net;
	wire [0:0] tmpINTERRUPT_0__Enable_net;
	electrical [0:0] tmpSIOVREF__Enable_net;

	cy_psoc3_pins_v1_10
		#(.id("52f31aa9-2f0a-497d-9a1f-1424095e13e6"),
		  .drive_mode(3'b110),
		  .ibuf_enabled(1'b1),
		  .init_dr_st(1'b1),
		  .input_clk_en(0),
		  .input_sync(1'b1),
		  .input_sync_mode(1'b0),
		  .intr_mode(2'b00),
		  .invert_in_clock(0),
		  .invert_in_clock_en(0),
		  .invert_in_reset(0),
		  .invert_out_clock(0),
		  .invert_out_clock_en(0),
		  .invert_out_reset(0),
		  .io_voltage(""),
		  .layout_mode("CONTIGUOUS"),
		  .oe_conn(1'b0),
		  .oe_reset(0),
		  .oe_sync(1'b0),
		  .output_clk_en(0),
		  .output_clock_mode(1'b0),
		  .output_conn(1'b1),
		  .output_mode(1'b0),
		  .output_reset(0),
		  .output_sync(1'b0),
		  .pa_in_clock(-1),
		  .pa_in_clock_en(-1),
		  .pa_in_reset(-1),
		  .pa_out_clock(-1),
		  .pa_out_clock_en(-1),
		  .pa_out_reset(-1),
		  .pin_aliases(""),
		  .pin_mode("O"),
		  .por_state(4),
		  .sio_group_cnt(0),
		  .sio_hyst(1'b1),
		  .sio_ibuf(""),
		  .sio_info(2'b00),
		  .sio_obuf(""),
		  .sio_refsel(""),
		  .sio_vtrip(""),
		  .sio_hifreq(""),
		  .sio_vohsel(""),
		  .slew_rate(1'b1),
		  .spanning(0),
		  .use_annotation(1'b0),
		  .vtrip(2'b10),
		  .width(1),
		  .ovt_hyst_trim(1'b0),
		  .ovt_needed(1'b0),
		  .ovt_slew_control(2'b00),
		  .input_buffer_sel(2'b00))
		Enable
		 (.oe(tmpOE__Enable_net),
		  .y({Net_1629}),
		  .fb({tmpFB_0__Enable_net[0:0]}),
		  .io({tmpIO_0__Enable_net[0:0]}),
		  .siovref(tmpSIOVREF__Enable_net),
		  .interrupt({tmpINTERRUPT_0__Enable_net[0:0]}),
		  .in_clock({1'b0}),
		  .in_clock_en({1'b1}),
		  .in_reset({1'b0}),
		  .out_clock({1'b0}),
		  .out_clock_en({1'b1}),
		  .out_reset({1'b0}));

	assign tmpOE__Enable_net = (`CYDEV_CHIP_MEMBER_USED == `CYDEV_CHIP_MEMBER_3A && `CYDEV_CHIP_REVISION_USED < `CYDEV_CHIP_REVISION_3A_ES3) ? ~{1'b1} : {1'b1};

    CyControlReg_v1_80 EnableAndDirection (
        .control_1(Net_1619),
        .control_2(Net_1581),
        .control_3(Net_1582),
        .control_0(Net_1629),
        .control_4(Net_1583),
        .control_5(Net_1584),
        .control_6(Net_1585),
        .control_7(Net_1586),
        .clock(1'b0),
        .reset(1'b0));
    defparam EnableAndDirection.Bit0Mode = 0;
    defparam EnableAndDirection.Bit1Mode = 0;
    defparam EnableAndDirection.Bit2Mode = 0;
    defparam EnableAndDirection.Bit3Mode = 0;
    defparam EnableAndDirection.Bit4Mode = 0;
    defparam EnableAndDirection.Bit5Mode = 0;
    defparam EnableAndDirection.Bit6Mode = 0;
    defparam EnableAndDirection.Bit7Mode = 0;
    defparam EnableAndDirection.BitValue = 0;
    defparam EnableAndDirection.BusDisplay = 0;
    defparam EnableAndDirection.ExtrReset = 0;
    defparam EnableAndDirection.NumOutputs = 2;

	wire [0:0] tmpOE__Direction_net;
	wire [0:0] tmpFB_0__Direction_net;
	wire [0:0] tmpIO_0__Direction_net;
	wire [0:0] tmpINTERRUPT_0__Direction_net;
	electrical [0:0] tmpSIOVREF__Direction_net;

	cy_psoc3_pins_v1_10
		#(.id("406d0cb9-2863-4739-aa57-5b7756a6f55a"),
		  .drive_mode(3'b110),
		  .ibuf_enabled(1'b1),
		  .init_dr_st(1'b0),
		  .input_clk_en(0),
		  .input_sync(1'b1),
		  .input_sync_mode(1'b0),
		  .intr_mode(2'b00),
		  .invert_in_clock(0),
		  .invert_in_clock_en(0),
		  .invert_in_reset(0),
		  .invert_out_clock(0),
		  .invert_out_clock_en(0),
		  .invert_out_reset(0),
		  .io_voltage(""),
		  .layout_mode("CONTIGUOUS"),
		  .oe_conn(1'b0),
		  .oe_reset(0),
		  .oe_sync(1'b0),
		  .output_clk_en(0),
		  .output_clock_mode(1'b0),
		  .output_conn(1'b1),
		  .output_mode(1'b0),
		  .output_reset(0),
		  .output_sync(1'b0),
		  .pa_in_clock(-1),
		  .pa_in_clock_en(-1),
		  .pa_in_reset(-1),
		  .pa_out_clock(-1),
		  .pa_out_clock_en(-1),
		  .pa_out_reset(-1),
		  .pin_aliases(""),
		  .pin_mode("O"),
		  .por_state(4),
		  .sio_group_cnt(0),
		  .sio_hyst(1'b1),
		  .sio_ibuf(""),
		  .sio_info(2'b00),
		  .sio_obuf(""),
		  .sio_refsel(""),
		  .sio_vtrip(""),
		  .sio_hifreq(""),
		  .sio_vohsel(""),
		  .slew_rate(1'b1),
		  .spanning(0),
		  .use_annotation(1'b0),
		  .vtrip(2'b10),
		  .width(1),
		  .ovt_hyst_trim(1'b0),
		  .ovt_needed(1'b0),
		  .ovt_slew_control(2'b00),
		  .input_buffer_sel(2'b00))
		Direction
		 (.oe(tmpOE__Direction_net),
		  .y({Net_1619}),
		  .fb({tmpFB_0__Direction_net[0:0]}),
		  .io({tmpIO_0__Direction_net[0:0]}),
		  .siovref(tmpSIOVREF__Direction_net),
		  .interrupt({tmpINTERRUPT_0__Direction_net[0:0]}),
		  .in_clock({1'b0}),
		  .in_clock_en({1'b1}),
		  .in_reset({1'b0}),
		  .out_clock({1'b0}),
		  .out_clock_en({1'b1}),
		  .out_reset({1'b0}));

	assign tmpOE__Direction_net = (`CYDEV_CHIP_MEMBER_USED == `CYDEV_CHIP_MEMBER_3A && `CYDEV_CHIP_REVISION_USED < `CYDEV_CHIP_REVISION_3A_ES3) ? ~{1'b1} : {1'b1};

    cy_sync_v1_0 Sync_1 (
        .s_in(Net_1208),
        .clock(Net_1209),
        .s_out(Net_1116));
    defparam Sync_1.SignalWidth = 1;


	cy_clock_v1_0
		#(.id("030c14f6-4e27-460a-acae-2c8cb8971905"),
		  .source_clock_id("75C2148C-3656-4d8a-846D-0CAE99AB6FF7"),
		  .divisor(0),
		  .period("0"),
		  .is_direct(1),
		  .is_digital(1))
		Clock_3
		 (.clock_out(Net_1209));




endmodule

