/* ========================================
 *
 * Copyright YOUR COMPANY, THE YEAR
 * All Rights Reserved
 * UNPUBLISHED, LICENSED SOFTWARE.
 *
 * CONFIDENTIAL AND PROPRIETARY INFORMATION
 * WHICH IS THE PROPERTY OF your company.
 *
 * ========================================
*/
#include <math.h>
#include <stdio.h>
#include <stdlib.h>
#include "AMC.h"
#include "usb.h"
#include "eeprom_amc.h"
#include <string.h>

void set_usbByteArray( float usbValue, uint8 usbStartByte );
void Enable_Set( CYBIT OnOff );
void Direction_Set( CYBIT OnOff );

//usb
static uint8 IN_Data_Buffer[MAX_USB_BYTES];
static uint8 OUT_Data_Buffer[MAX_USB_BYTES];

/* USB */
enum usbCommands {	
    usbSetEnable = 0u,
    usbSetDirection,
    usbSetCounts,
    usbSetClock,
    usbStartMotion,
};

uint32 pulses = 0;
CYBIT direction = TRUE;
CYBIT enable = TRUE;

int main()
{
    CyGlobalIntEnable; /* Enable global interrupts. */
    
    usb_Init( usbHidOutEpHandler, IN_Data_Buffer, OUT_Data_Buffer);
    
    Timer1_Start( );
    
    Enable_Set( TRUE );
    
    for(;;)
    {        
        usb_Tick();
    }
}
void set_usbByteArray( float usbValue, uint8 usbStartByte )
{	
	uint32 usbValue_UINT32 = *(uint32 *)&usbValue;	
		
	/* Load Byte 1 of usbCmdResponse into the Input Buffer */
	IN_Data_Buffer[usbStartByte + 3] = (int8) 0x000000FF & usbValue_UINT32;
	
	/* Load Byte 2 of usbCmdResponse into the Input Buffer */
	IN_Data_Buffer[usbStartByte + 2] = (int8) 0x000000FF & (usbValue_UINT32 >>  8);
	
	/* Load Byte 3 of usbCmdResponse into the Input Buffer */
	IN_Data_Buffer[usbStartByte + 1] = (int8) 0x000000FF & (usbValue_UINT32 >>  16);
	
	/* Load Byte 4 of usbCmdResponse into the Input Buffer */
	IN_Data_Buffer[usbStartByte] = (int8) 0x000000FF & (usbValue_UINT32 >> 24);
}
void usbHidOutEpHandler( void )
{
	float floatVal1 = 0.0f;
	float floatValOut = 0.0f;
	
	switch(OUT_Data_Buffer[0])
	{        
		case usbSetEnable:
        {            
            floatVal1 = *((float*)(&OUT_Data_Buffer[1]));
            enable = (CYBIT)floatVal1;      
            if(!enable)
            {
                Enable_Set( TRUE );
            }
            else
            {
                Enable_Set( FALSE );
            }     
            
			break;
        }
		case usbSetDirection:
        {            
            floatVal1 = *((float*)(&OUT_Data_Buffer[1]));
            direction = (CYBIT)floatVal1;      
            if(!direction)
            {
                Direction_Set( FALSE );
            }
            else
            {
                Direction_Set( TRUE );
            }     
            
			break;
        }
		case usbSetCounts:
        {
			floatVal1 = *((float*)(&OUT_Data_Buffer[1]));
            if(floatVal1 > 2.0f)
            {
                pulses = (uint32)floatVal1 - 2;
            }
            else
            {
                pulses = 5u;
            }
    		Timer1_WritePeriod(pulses);
			break;
        }
		case usbSetClock:
        {            
            uint16 divider = 0u;
            floatVal1 = *((float*)(&OUT_Data_Buffer[1]));
            divider = 100000.0f / floatVal1;
            Clock_1_SetDivider((uint16)((100000.0f/(floatVal1))));
            
			break;
        }
		case usbStartMotion:
        {            
             TrigPulseTrain_Write( 1 );
    		
			break;
        }

		default:
			break;
	}
		
	
	// Send data back to PC over USB
	memset(&IN_Data_Buffer[0], (uint8)0, MAX_USB_BYTES);
	set_usbByteArray( floatValOut, 0u );
	usb_Load_EP1_Bulk_EP();

}
void USBFS_EP_2_ISR_ExitCallback( void )
{
    usb_Load_EP2();   
}

void Enable_Set( CYBIT OnOff )
{
    uint8   CurrentVal;
    CurrentVal = EnableAndDirection_Read();                                 // Read current LED setting
    if(OnOff)
    {
        CurrentVal |= 0b00000001;
    }
    else
    {
        CurrentVal &= ~0b00000001;
    }
    EnableAndDirection_Write( CurrentVal );
}
void Direction_Set( CYBIT OnOff )
{
    uint8   CurrentVal;
    CurrentVal = EnableAndDirection_Read();                                 // Read current LED setting
    if(OnOff)
    {
        CurrentVal |= 0b00000010;
    }
    else
    {
        CurrentVal &= ~0b00000010;
    }
    EnableAndDirection_Write( CurrentVal );
}
/* [] END OF FILE */
