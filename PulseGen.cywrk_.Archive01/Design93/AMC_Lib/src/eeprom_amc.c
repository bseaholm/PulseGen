/*------------------------------------------------------------------------------

	Filename:	eeprom.c

	Authors:	Brian Seaholm of Resodyn Acoustic Mixers (Copywrite 2013)

	Purpose:	This implementation file manages reading and writing to the EEPROM
				for infrequently changing non-volatile values

	History:

	$Log: eeprom.c $
	Revision 1.0  2013/07/08 18:16:32  Brian
	Initial revision


------------------------------------------------------------------------------*/

/*------------------------------------------------------------------------------
	Includes
------------------------------------------------------------------------------*/
#include <project.h>
#include <stdlib.h>
#include <stdio.h>
#include "eeprom_amc.h"

/*------------------------------------------------------------------------------
	Defines/Enumerations
------------------------------------------------------------------------------*/

/*------------------------------------------------------------------------------
	Private Prototypes
------------------------------------------------------------------------------*/
static void eepromFloatToByteArray( float floatNumber, uint8 returnArray[4] );
static void eepromUINT32ToByteArray( uint32 UINT32Number, uint8 returnArray[4] );
static float eepromReadRow( uint8 eepromRow );
static uint32 eepromReadRowUINT32( uint8 eepromRow );
static void eepromWriteRow( float floatNumber, uint8 eepromRow );
static void eepromWriteRowUint32( uint32 UINT32Number, uint8 eepromRow );

/*------------------------------------------------------------------------------
	Variables
------------------------------------------------------------------------------*/

/*-----------------------------------------------------------------------------
	Public Functions
-----------------------------------------------------------------------------*/
/*-----------------------------------------------------------------------------

	Function:	eeprom_Init

	Synopsis:	

	Parameters:	

	Returns:	none

	Warnings:	

-----------------------------------------------------------------------------*/
void eeprom_Init( void )
{
	EEPROM_1_Start();
}



/*-----------------------------------------------------------------------------

	Function:	eepromGetUint32

	Synopsis:	

	Parameters:	

	Returns:	none

	Warnings:	

-----------------------------------------------------------------------------*/
uint32 eepromGetUint32( uint8 eepromRow )
{
	return eepromReadRowUINT32( eepromRow );
}


/*-----------------------------------------------------------------------------

	Function:	eepromSetUint32

	Synopsis:	

	Parameters:	

	Returns:	none

	Warnings:	

-----------------------------------------------------------------------------*/
void eepromSetUint32( uint32 UINT32Number, uint8 eepromRow )
{
	eepromWriteRowUint32( UINT32Number, eepromRow );
}
/*-----------------------------------------------------------------------------

	Function:	eepromGetFloat

	Synopsis:	

	Parameters:	

	Returns:	none

	Warnings:	

-----------------------------------------------------------------------------*/
float eepromGetFloat( uint8 eepromRow )
{
	return eepromReadRow( eepromRow );
}


/*-----------------------------------------------------------------------------

	Function:	eepromSetFloat

	Synopsis:	

	Parameters:	

	Returns:	none

	Warnings:	

-----------------------------------------------------------------------------*/
void eepromSetFloat( float floatNumber, uint8 eepromRow )
{
	eepromWriteRow( floatNumber, eepromRow );
}







/*-----------------------------------------------------------------------------
	Private Functions
-----------------------------------------------------------------------------*/
/*-----------------------------------------------------------------------------

	Function:	eepromFloatToByteArray

	Synopsis:	This function takes a floating point argument and returns a 
				byte array formatted correctly for EEPROM operations

	Parameters:	floating point number, byte array organized with correct "endianness"

	Returns:	none

	Warnings:	

-----------------------------------------------------------------------------*/
static void eepromFloatToByteArray( float floatNumber, uint8 returnArray[4] )
{	
	uint32 floatNumber_UINT32 = *(uint32 *)&floatNumber;

	/* break the float up into a uint8 array */
	returnArray[0] = (uint8) 0x000000FF & (floatNumber_UINT32 >>  24);	
	returnArray[1] = (uint8) 0x000000FF & (floatNumber_UINT32 >>  16);
	returnArray[2] = (uint8) 0x000000FF & (floatNumber_UINT32 >>  8);
	returnArray[3] = (uint8) 0x000000FF & floatNumber_UINT32;
		
}
/*-----------------------------------------------------------------------------

	Function:	eepromUINT32ToByteArray

	Synopsis:	This function takes a uint32 argument and returns a 
				byte array formatted correctly for EEPROM operations

	Parameters:	uint32 number, byte array organized with correct "endianness"

	Returns:	none

	Warnings:	

-----------------------------------------------------------------------------*/
static void eepromUINT32ToByteArray( uint32 UINT32Number, uint8 returnArray[4] )
{	
	/* break the uint32 up into a uint8 array */
	returnArray[0] = (uint8) 0x000000FF & (UINT32Number >>  24);	
	returnArray[1] = (uint8) 0x000000FF & (UINT32Number >>  16);
	returnArray[2] = (uint8) 0x000000FF & (UINT32Number >>  8);
	returnArray[3] = (uint8) 0x000000FF & UINT32Number;
		
}
/*-----------------------------------------------------------------------------

	Function:	eepromReadRow

	Synopsis:	This function returns a floating point number from EEPROM registers

	Parameters:	eeprom row of data to return

	Returns:	floating point

	Warnings:	

-----------------------------------------------------------------------------*/
static float eepromReadRow( uint8 eepromRow )
{	

    reg8 * EepromPointer;
	uint8 eepromArray[4];
		
	/* setup the pointer for getting the right value in EEPROM */
    EepromPointer = (reg8 *) CYDEV_EE_BASE;
	EepromPointer = EepromPointer + (CYDEV_EEPROM_ROW_SIZE * eepromRow);
		
	/* reorder the return for the correct float conversion */
	eepromArray[0] = (uint8)(*(EepromPointer + 3));	
	eepromArray[1] = (uint8)(*(EepromPointer + 2));
	eepromArray[2] = (uint8)(*(EepromPointer + 1));
	eepromArray[3] = (uint8)(*(EepromPointer + 0));
	
	return *((float*)(eepromArray));
}
/*-----------------------------------------------------------------------------

	Function:	eepromReadRowUINT32

	Synopsis:	This function returns a uint32 number from EEPROM registers

	Parameters:	eeprom row of data to return

	Returns:	uint32 number value

	Warnings:	

-----------------------------------------------------------------------------*/
static uint32 eepromReadRowUINT32( uint8 eepromRow )
{	

    reg8 * EepromPointer;
	uint8 eepromArray[4];
		
	/* setup the pointer for getting the right value in EEPROM */
    EepromPointer = (reg8 *) CYDEV_EE_BASE;
	EepromPointer = EepromPointer + (CYDEV_EEPROM_ROW_SIZE * eepromRow);
		
	/* reorder the return for the correct float conversion */
	eepromArray[0] = (uint8)(*(EepromPointer + 3));	
	eepromArray[1] = (uint8)(*(EepromPointer + 2));
	eepromArray[2] = (uint8)(*(EepromPointer + 1));
	eepromArray[3] = (uint8)(*(EepromPointer + 0));
	
	return *((uint32*)(eepromArray));
}
/*-----------------------------------------------------------------------------

	Function:	eepromWriteRow

	Synopsis:	This function writes a floating point number to an EEPROM row

	Parameters:	floating point number and a row in EEPROM to write to

	Returns:	floating point

	Warnings:	

-----------------------------------------------------------------------------*/
static void eepromWriteRow( float floatNumber, uint8 eepromRow )
{	
	uint8 eepromArray[4];

	/* convert the float to a correctly formatted byte array */
	eepromFloatToByteArray( floatNumber, eepromArray );

    /* Get the die temp. */
    if(CySetTemp() == CYRET_SUCCESS)
    {
        /* Write to EEPROM row */
        EEPROM_1_Write(eepromArray, eepromRow);
    }	
}


/*-----------------------------------------------------------------------------

	Function:	eepromWriteRowUint32

	Synopsis:	This function writes a floating point number to an EEPROM row

	Parameters:	floating point number and a row in EEPROM to write to

	Returns:	floating point

	Warnings:	

-----------------------------------------------------------------------------*/
static void eepromWriteRowUint32( uint32 UINT32Number, uint8 eepromRow )
{	
	uint8 eepromArray[4];

	/* convert the uint32 to a correctly formatted byte array */
	eepromUINT32ToByteArray( UINT32Number, eepromArray );

    /* Get the die temp. */
    if(CySetTemp() == CYRET_SUCCESS)
    {
        /* Write to EEPROM row */
        EEPROM_1_Write(eepromArray, eepromRow);
    }	
}
/* [] END OF FILE */
