/*******************************************************************************
* File Name: EnableAndDirection_PM.c
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

#include "EnableAndDirection.h"

/* Check for removal by optimization */
#if !defined(EnableAndDirection_Sync_ctrl_reg__REMOVED)

static EnableAndDirection_BACKUP_STRUCT  EnableAndDirection_backup = {0u};

    
/*******************************************************************************
* Function Name: EnableAndDirection_SaveConfig
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
void EnableAndDirection_SaveConfig(void) 
{
    EnableAndDirection_backup.controlState = EnableAndDirection_Control;
}


/*******************************************************************************
* Function Name: EnableAndDirection_RestoreConfig
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
void EnableAndDirection_RestoreConfig(void) 
{
     EnableAndDirection_Control = EnableAndDirection_backup.controlState;
}


/*******************************************************************************
* Function Name: EnableAndDirection_Sleep
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
void EnableAndDirection_Sleep(void) 
{
    EnableAndDirection_SaveConfig();
}


/*******************************************************************************
* Function Name: EnableAndDirection_Wakeup
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
void EnableAndDirection_Wakeup(void)  
{
    EnableAndDirection_RestoreConfig();
}

#endif /* End check for removal by optimization */


/* [] END OF FILE */
