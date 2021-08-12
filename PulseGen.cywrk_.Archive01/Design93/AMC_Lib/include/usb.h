/*------------------------------------------------------------------------------

	File Name:	usb.h

	Authors:	Brian Seaholm and Tom Rader of Resodyn Acoustic Mixers (Copywrite 2014)

	Purpose:	This implementation file manages reading and writing to USB HID.
				

	History:

	$Log: usb.h $
    Revision 1.0  2013/07/08 18:16:32  Brian
	Revision 1.1  2014/05/07 17:23:00  Tom
    Revision 1.2  2014/05/09 16:50:00  Tom
    
    

------------------------------------------------------------------------------*/
#ifndef usb_h
#define usb_h

/*------------------------------------------------------------------------------
	Includes
------------------------------------------------------------------------------*/
#include <project.h>

/*------------------------------------------------------------------------------
	Defines/Enumerations
------------------------------------------------------------------------------*/
#define MAX_USB_BYTES  			(64u)

#define DEVICE_ID 0
#define IN_ENDPOINT 0x01
#define OUT_ENDPOINT 0x02
#define UnassignedAddress 0
/*------------------------------------------------------------------------------
	Type Definitions
------------------------------------------------------------------------------*/

typedef  void (*UsbHidOutEpCallback)( void );

/*------------------------------------------------------------------------------
	Public Prototypes
------------------------------------------------------------------------------*/
void usb_Init( UsbHidOutEpCallback  usbHidOutEpHandler, uint8* InDataBuffer, uint8* OUT_Data_Buffer );
void usb_Tick( void );
void usb_Load_EP2( void );
void usb_Tick_Bulk_EP( void );
void usb_Load_EP1_Bulk_EP( void );
void USB_Enumeration_Reset( void );

/*------------------------------------------------------------------------------
	Global Variables
------------------------------------------------------------------------------*/


#endif                                                             /* usb_h */

//[] END OF FILE
