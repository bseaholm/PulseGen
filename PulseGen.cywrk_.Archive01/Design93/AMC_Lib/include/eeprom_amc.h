/*------------------------------------------------------------------------------

	File Name:	eeprom.h

	Author:		Brian Seaholm of Resodyn Acoustic Mixers (Copywrite 2013)

	Purpose:	This header file manages reading and writing to the EEPROM
				for infrequently changing non-volatile values

	History:
	
	$Log: eeprom.h $
	Revision 1.0  2013/07/08 18:16:32  Brian
	Initial revision

------------------------------------------------------------------------------*/
#ifndef eeprom_h
#define eeprom_h

/*------------------------------------------------------------------------------
	Includes
------------------------------------------------------------------------------*/
#include <project.h>

/*------------------------------------------------------------------------------
	Defines/Enumerations
------------------------------------------------------------------------------*/

/*------------------------------------------------------------------------------
	Type Definitions
------------------------------------------------------------------------------*/


/*------------------------------------------------------------------------------
	Public Prototypes
------------------------------------------------------------------------------*/
void eeprom_Init( void );
uint32 eepromGetUint32( uint8 eepromRow );
void eepromSetUint32( uint32 UINT32Number, uint8 eepromRow );
float eepromGetFloat( uint8 eepromRow );
void eepromSetFloat( float floatNumber, uint8 eepromRow );


/*------------------------------------------------------------------------------
	Global Variables
------------------------------------------------------------------------------*/


#endif                                                             /* eeprom_h */

//[] END OF FILE
