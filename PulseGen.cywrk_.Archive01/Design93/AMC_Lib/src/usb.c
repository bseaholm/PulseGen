/*------------------------------------------------------------------------------

	Filename:	usb.c

	Authors:	Brian Seaholm of Resodyn Acoustic Mixers (Copywrite 2014)

	Purpose:	This implementation file manages reading and writing to USB.
	
				-------------------------------------------------------------
				--------------IMPORTANT!!!!!---------------------------------
				Refer to USBFS_episr.c for additional code.  USBFS_EP_2_ISR
				calls usb_Load_EP2 on interrupt for OUT endpoint.
				USBFS_BUS_RESET_ISR calls USB_Enumeration_Reset for USB
				cable disconnection interrupt notification.  Also, call usb_Tick()
				from main.c
                
                2020-08-06: Because of GitHub usage, the user code in USBFS_episr.c kept
                getting wiped out.  Now using cyapicallbacks.h.
				-------------------------------------------------------------

	History:

	$Log: usb.c $
    Revision 1.0  2013/07/08 18:16:32  Brian
------------------------------------------------------------------------------*/

/*------------------------------------------------------------------------------
	Includes
------------------------------------------------------------------------------*/
#include <project.h>
#include <stdlib.h>
#include <stdio.h>
#include "AMC.h"
#include "eeprom_amc.h"
#include "usb.h"



/*------------------------------------------------------------------------------
	Defines/Enumerations
------------------------------------------------------------------------------*/



/*------------------------------------------------------------------------------
	Variables
------------------------------------------------------------------------------*/
static UsbHidOutEpCallback usbHidOutEpHandlerInt;	//function pointer local storage for USB HID Out Endpoint Callback function

/* Local Storage for Input and Output Data Buffers */
static uint8* IN_Data_Buffer_Local;
static uint8* OUT_Data_Buffer_Local;

static CYBIT USB_Enumerated = FALSE;
static uint8 OUT_count;


/*------------------------------------------------------------------------------
	Private Prototypes
------------------------------------------------------------------------------*/
static void usb_Load_EP1( void );

/*-----------------------------------------------------------------------------
	Public Functions
-----------------------------------------------------------------------------*/
/*-----------------------------------------------------------------------------

	Function:	usb_Init

	Synopsis:	initialize the usbfs

	Parameters:	none

	Returns:	none

	Warnings:	

-----------------------------------------------------------------------------*/
void usb_Init( UsbHidOutEpCallback  usbHidOutEpHandler, uint8* IN_Data_Buffer, uint8* OUT_Data_Buffer )
{
	USBFS_Start( DEVICE_ID, USBFS_5V_OPERATION);                    // Start HID USB, note 5V operation	
	usbHidOutEpHandlerInt = usbHidOutEpHandler;						//get the function pointer for the callback
	IN_Data_Buffer_Local = IN_Data_Buffer;
	OUT_Data_Buffer_Local = OUT_Data_Buffer;
	USBFS_EnableOutEP(OUT_ENDPOINT);
}
/*-----------------------------------------------------------------------------

	Function:	usb_Tick

	Synopsis:	time tick function for USB

	Parameters:	none

	Returns:	none

	Warnings:	

-----------------------------------------------------------------------------*/
void usb_Tick( void )
{
	if(USBFS_GetConfiguration() && !USB_Enumerated)
	{
	    /* Enable the BULK OUT endpoint to recieve data */
	    USBFS_EnableOutEP(OUT_ENDPOINT);
		
		USB_Enumerated = TRUE;
	}
	
	usb_Load_EP1( ); //update EP1
}
/*-----------------------------------------------------------------------------

	Function:	usb_Tick_Bulk_EP

	Synopsis:	time tick function for USB with Bulk endpoints

	Parameters:	none

	Returns:	none

	Warnings:	

-----------------------------------------------------------------------------*/
void usb_Tick_Bulk_EP( void )
{
	if(USBFS_GetConfiguration() && !USB_Enumerated)
	{
	    /* Enable the BULK OUT endpoint to recieve data */
	    USBFS_EnableOutEP(OUT_ENDPOINT);
		
		USB_Enumerated = TRUE;
	}
}
/*-----------------------------------------------------------------------------

	Function:	usb_Load_EP1_Bulk_EP

	Synopsis:	Load the IN ENDPOINT with some new data for Bulk endpoints

	Parameters:	none

	Returns:	none

	Warnings:	

-----------------------------------------------------------------------------*/
void usb_Load_EP1_Bulk_EP( void )
{
    /* Load data located in InDataBuffer and load it into the IN endpoint */
    USBFS_LoadEP(IN_ENDPOINT, IN_Data_Buffer_Local, MAX_USB_BYTES);
}
/*-----------------------------------------------------------------------------

	Function:	usb_Load_EP2

	Synopsis:	Load the OUT ENDPOINT with some new data

	Parameters:	none

	Returns:	none

	Warnings:	

-----------------------------------------------------------------------------*/
void usb_Load_EP2( void )
{    
	/* Check to see if the OUT Endpoint is full from a recieved transaction. */
	if(USBFS_GetEPState(OUT_ENDPOINT) == USBFS_OUT_BUFFER_FULL)
	{
		/* Get the number of bytes recieved */
		OUT_count = USBFS_wGetEPCount(OUT_ENDPOINT);
		
		/* Read the OUT endpoint and store data in OUT_Data_Buffer */
		USBFS_ReadOutEP(OUT_ENDPOINT, OUT_Data_Buffer_Local, OUT_count);        

		/* Re-enable OUT endpoint */
		USBFS_EnableOutEP(OUT_ENDPOINT);
        		
	    /* Call the Callback */
		(*usbHidOutEpHandlerInt)( );
	}
}

/*-----------------------------------------------------------------------------

	Function:	USB_Enumeration_Reset

	Synopsis:	Function to reset internal enumeration status

	Parameters:	none

	Returns:	none

	Warnings:	

-----------------------------------------------------------------------------*/
void USB_Enumeration_Reset( void )
{
	USB_Enumerated = FALSE;
}


/*-----------------------------------------------------------------------------
	Private Functions
-----------------------------------------------------------------------------*/
/*-----------------------------------------------------------------------------

	Function:	usb_Load_EP1

	Synopsis:	Load the IN ENDPOINT with some new data

	Parameters:	none

	Returns:	none

	Warnings:	

-----------------------------------------------------------------------------*/
static void usb_Load_EP1( void )
{
	/*Check to see if the IN Endpoint is empty. If so, load it with Input data to be tranfered */
	if(USBFS_GetEPState(IN_ENDPOINT) == USBFS_IN_BUFFER_EMPTY)
	{
	    /* Load data located in InDataBuffer and load it into the IN endpoint */
	    USBFS_LoadEP(IN_ENDPOINT, IN_Data_Buffer_Local, MAX_USB_BYTES);
	    /* Enable the OUT endpoint to recieve data */
	    USBFS_EnableOutEP( OUT_ENDPOINT );
	}
}

/* [] END OF FILE */