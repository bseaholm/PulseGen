/*******************************************************************************
* File Name: TrigPulseTrain_PM.c
* Version 1.80
*
* Description:
*  This file contains the setup, control, and status commands to support 
*  the component operation in the low power mode. 
*
* Note:
*
********************************************************************************
* Copyright 2015, Cypress Semiconductor Corporation.  All rights reserved.
* You may use this file only in accordance with the license, terms, conditions, 
* disclaimers, and limitations in the end user license agreement accompanying 
* the software package with which this file was provided.
*******************************************************************************/

#include "TrigPulseTrain.h"

/* Check for removal by optimization */
#if !defined(TrigPulseTrain_Sync_ctrl_reg__REMOVED)

static TrigPulseTrain_BACKUP_STRUCT  TrigPulseTrain_backup = {0u};

    
/*******************************************************************************
* Function Name: TrigPulseTrain_SaveConfig
********************************************************************************
*
* Summary:
*  Saves the control register value.
*
* Parameters:
*  None
*
* Return:
*  None
*
*******************************************************************************/
void TrigPulseTrain_SaveConfig(void) 
{
    TrigPulseTrain_backup.controlState = TrigPulseTrain_Control;
}


/*******************************************************************************
* Function Name: TrigPulseTrain_RestoreConfig
********************************************************************************
*
* Summary:
*  Restores the control register value.
*
* Parameters:
*  None
*
* Return:
*  None
*
*
*******************************************************************************/
void TrigPulseTrain_RestoreConfig(void) 
{
     TrigPulseTrain_Control = TrigPulseTrain_backup.controlState;
}


/*******************************************************************************
* Function Name: TrigPulseTrain_Sleep
********************************************************************************
*
* Summary:
*  Prepares the component for entering the low power mode.
*
* Parameters:
*  None
*
* Return:
*  None
*
*******************************************************************************/
void TrigPulseTrain_Sleep(void) 
{
    TrigPulseTrain_SaveConfig();
}


/*******************************************************************************
* Function Name: TrigPulseTrain_Wakeup
********************************************************************************
*
* Summary:
*  Restores the component after waking up from the low power mode.
*
* Parameters:
*  None
*
* Return:
*  None
*
*******************************************************************************/
void TrigPulseTrain_Wakeup(void)  
{
    TrigPulseTrain_RestoreConfig();
}

#endif /* End check for removal by optimization */


/* [] END OF FILE */
