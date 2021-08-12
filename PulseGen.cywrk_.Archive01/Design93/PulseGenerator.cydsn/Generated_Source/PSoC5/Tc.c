/*******************************************************************************
* File Name: Tc.c  
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
#include "Tc.h"

/* APIs are not generated for P15[7:6] on PSoC 5 */
#if !(CY_PSOC5A &&\
	 Tc__PORT == 15 && ((Tc__MASK & 0xC0) != 0))


/*******************************************************************************
* Function Name: Tc_Write
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
void Tc_Write(uint8 value) 
{
    uint8 staticBits = (Tc_DR & (uint8)(~Tc_MASK));
    Tc_DR = staticBits | ((uint8)(value << Tc_SHIFT) & Tc_MASK);
}


/*******************************************************************************
* Function Name: Tc_SetDriveMode
********************************************************************************
*
* Summary:
*  Change the drive mode on the pins of the port.
* 
* Parameters:  
*  mode:  Change the pins to one of the following drive modes.
*
*  Tc_DM_STRONG     Strong Drive 
*  Tc_DM_OD_HI      Open Drain, Drives High 
*  Tc_DM_OD_LO      Open Drain, Drives Low 
*  Tc_DM_RES_UP     Resistive Pull Up 
*  Tc_DM_RES_DWN    Resistive Pull Down 
*  Tc_DM_RES_UPDWN  Resistive Pull Up/Down 
*  Tc_DM_DIG_HIZ    High Impedance Digital 
*  Tc_DM_ALG_HIZ    High Impedance Analog 
*
* Return: 
*  None
*
*******************************************************************************/
void Tc_SetDriveMode(uint8 mode) 
{
	CyPins_SetPinDriveMode(Tc_0, mode);
}


/*******************************************************************************
* Function Name: Tc_Read
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
*  Macro Tc_ReadPS calls this function. 
*  
*******************************************************************************/
uint8 Tc_Read(void) 
{
    return (Tc_PS & Tc_MASK) >> Tc_SHIFT;
}


/*******************************************************************************
* Function Name: Tc_ReadDataReg
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
uint8 Tc_ReadDataReg(void) 
{
    return (Tc_DR & Tc_MASK) >> Tc_SHIFT;
}


/* If Interrupts Are Enabled for this Pins component */ 
#if defined(Tc_INTSTAT) 

    /*******************************************************************************
    * Function Name: Tc_ClearInterrupt
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
    uint8 Tc_ClearInterrupt(void) 
    {
        return (Tc_INTSTAT & Tc_MASK) >> Tc_SHIFT;
    }

#endif /* If Interrupts Are Enabled for this Pins component */ 

#endif /* CY_PSOC5A... */

    
/* [] END OF FILE */
