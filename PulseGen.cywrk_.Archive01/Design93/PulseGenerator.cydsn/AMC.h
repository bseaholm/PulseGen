/*------------------------------------------------------------------------------

	File Name:	AMC.h

	Authors:	Brian Seaholm of Resodyn Acoustic Mixers (Copywrite 2014)

	Purpose:	Header file for this project's specific AMC board setup

------------------------------------------------------------------------------*/
#ifndef amc_h
#define amc_h

/*------------------------------------------------------------------------------
	Includes
------------------------------------------------------------------------------*/
/*------------------------------------------------------------------------------
	Defines/Enumerations
------------------------------------------------------------------------------*/
#define ON 1
#define OFF 0
#define FALSE 0
#define TRUE !FALSE



/*------------------------------------------------------------------------------
	Type Definitions
------------------------------------------------------------------------------*/
/*------------------------------------------------------------------------------
	Public Prototypes
------------------------------------------------------------------------------*/

void usbHidOutEpHandler( void );
/*------------------------------------------------------------------------------
	Global Variables
------------------------------------------------------------------------------*/


#endif                                                             /* amc_h */

//[] END OF FILE