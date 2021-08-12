/*******************************************************************************
* File Name: Dout.c  
* Version 2.10
*
* Description:
*  This file contains API to enable firmware control of a Pins component.
*
* Note:
*
********************************************************************************
* Copyright 2008-2014, Cypress Semiconductor Corporation.  All rights reserved.
* You may use this file only in accordance with the license, terms, conditions, 
* disclaimers, and limitations in the end user license agreement accompanying 
* the software package with which this file was provided.
*******************************************************************************/

#include "cytypes.h"
#include "Dout.h"

/* APIs are not generated for P15[7:6] on PSoC 5 */
#if !(CY_PSOC5A &&\
	 Dout__PORT == 15 && ((Dout__MASK & 0xC0) != 0))


/*******************************************************************************
* Function Name: Dout_Write
********************************************************************************
*
* Summary:
*  Assign a new value to the digital port's data output register.  
*
* Parameters:  
*  prtValue:  The value to be assigned to the Digital Port. 
*
* Return: 
*  None
*  
*******************************************************************************/
void Dout_Write(uint8 value) 
{
    uint8 staticBits = (Dout_DR & (uint8)(~Dout_MASK));
    Dout_DR = staticBits | ((uint8)(value << Dout_SHIFT) & Dout_MASK);
}


/*******************************************************************************
* Function Name: Dout_SetDriveMode
********************************************************************************
*
* Summary:
*  Change the drive mode on the pins of the port.
* 
* Parameters:  
*  mode:  Change the pins to one of the following drive modes.
*
*  Dout_DM_STRONG     Strong Drive 
*  Dout_DM_OD_HI      Open Drain, Drives High 
*  Dout_DM_OD_LO      Open Drain, Drives Low 
*  Dout_DM_RES_UP     Resistive Pull Up 
*  Dout_DM_RES_DWN    Resistive Pull Down 
*  Dout_DM_RES_UPDWN  Resistive Pull Up/Down 
*  Dout_DM_DIG_HIZ    High Impedance Digital 
*  Dout_DM_ALG_HIZ    High Impedance Analog 
*
* Return: 
*  None
*
*******************************************************************************/
void Dout_SetDriveMode(uint8 mode) 
{
	CyPins_SetPinDriveMode(Dout_0, mode);
}


/*******************************************************************************
* Function Name: Dout_Read
********************************************************************************
*
* Summary:
*  Read the current value on the pins of the Digital Port in right justified 
*  form.
*
* Parameters:  
*  None
*
* Return: 
*  Returns the current value of the Digital Port as a right justified number
*  
* Note:
*  Macro Dout_ReadPS calls this function. 
*  
*******************************************************************************/
uint8 Dout_Read(void) 
{
    return (Dout_PS & Dout_MASK) >> Dout_SHIFT;
}


/*******************************************************************************
* Function Name: Dout_ReadDataReg
********************************************************************************
*
* Summary:
*  Read the current value assigned to a Digital Port's data output register
*
* Parameters:  
*  None 
*
* Return: 
*  Returns the current value assigned to the Digital Port's data output register
*  
*******************************************************************************/
uint8 Dout_ReadDataReg(void) 
{
    return (Dout_DR & Dout_MASK) >> Dout_SHIFT;
}


/* If Interrupts Are Enabled for this Pins component */ 
#if defined(Dout_INTSTAT) 

    /*******************************************************************************
    * Function Name: Dout_ClearInterrupt
    ********************************************************************************
    * Summary:
    *  Clears any active interrupts attached to port and returns the value of the 
    *  interrupt status register.
    *
    * Parameters:  
    *  None 
    *
    * Return: 
    *  Returns the value of the interrupt status register
    *  
    *******************************************************************************/
    uint8 Dout_ClearInterrupt(void) 
    {
        return (Dout_INTSTAT & Dout_MASK) >> Dout_SHIFT;
    }

#endif /* If Interrupts Are Enabled for this Pins component */ 

#endif /* CY_PSOC5A... */

    
/* [] END OF FILE */
