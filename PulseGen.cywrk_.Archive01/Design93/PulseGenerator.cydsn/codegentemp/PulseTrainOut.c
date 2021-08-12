/*******************************************************************************
* File Name: PulseTrainOut.c  
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
#include "PulseTrainOut.h"

/* APIs are not generated for P15[7:6] on PSoC 5 */
#if !(CY_PSOC5A &&\
	 PulseTrainOut__PORT == 15 && ((PulseTrainOut__MASK & 0xC0) != 0))


/*******************************************************************************
* Function Name: PulseTrainOut_Write
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
void PulseTrainOut_Write(uint8 value) 
{
    uint8 staticBits = (PulseTrainOut_DR & (uint8)(~PulseTrainOut_MASK));
    PulseTrainOut_DR = staticBits | ((uint8)(value << PulseTrainOut_SHIFT) & PulseTrainOut_MASK);
}


/*******************************************************************************
* Function Name: PulseTrainOut_SetDriveMode
********************************************************************************
*
* Summary:
*  Change the drive mode on the pins of the port.
* 
* Parameters:  
*  mode:  Change the pins to one of the following drive modes.
*
*  PulseTrainOut_DM_STRONG     Strong Drive 
*  PulseTrainOut_DM_OD_HI      Open Drain, Drives High 
*  PulseTrainOut_DM_OD_LO      Open Drain, Drives Low 
*  PulseTrainOut_DM_RES_UP     Resistive Pull Up 
*  PulseTrainOut_DM_RES_DWN    Resistive Pull Down 
*  PulseTrainOut_DM_RES_UPDWN  Resistive Pull Up/Down 
*  PulseTrainOut_DM_DIG_HIZ    High Impedance Digital 
*  PulseTrainOut_DM_ALG_HIZ    High Impedance Analog 
*
* Return: 
*  None
*
*******************************************************************************/
void PulseTrainOut_SetDriveMode(uint8 mode) 
{
	CyPins_SetPinDriveMode(PulseTrainOut_0, mode);
}


/*******************************************************************************
* Function Name: PulseTrainOut_Read
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
*  Macro PulseTrainOut_ReadPS calls this function. 
*  
*******************************************************************************/
uint8 PulseTrainOut_Read(void) 
{
    return (PulseTrainOut_PS & PulseTrainOut_MASK) >> PulseTrainOut_SHIFT;
}


/*******************************************************************************
* Function Name: PulseTrainOut_ReadDataReg
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
uint8 PulseTrainOut_ReadDataReg(void) 
{
    return (PulseTrainOut_DR & PulseTrainOut_MASK) >> PulseTrainOut_SHIFT;
}


/* If Interrupts Are Enabled for this Pins component */ 
#if defined(PulseTrainOut_INTSTAT) 

    /*******************************************************************************
    * Function Name: PulseTrainOut_ClearInterrupt
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
    uint8 PulseTrainOut_ClearInterrupt(void) 
    {
        return (PulseTrainOut_INTSTAT & PulseTrainOut_MASK) >> PulseTrainOut_SHIFT;
    }

#endif /* If Interrupts Are Enabled for this Pins component */ 

#endif /* CY_PSOC5A... */

    
/* [] END OF FILE */
