/*******************************************************************************
* File Name: PulsesDone_ISR.h
* Version 1.70
*
*  Description:
*   Provides the function definitions for the Interrupt Controller.
*
*
********************************************************************************
* Copyright 2008-2015, Cypress Semiconductor Corporation.  All rights reserved.
* You may use this file only in accordance with the license, terms, conditions, 
* disclaimers, and limitations in the end user license agreement accompanying 
* the software package with which this file was provided.
*******************************************************************************/
#if !defined(CY_ISR_PulsesDone_ISR_H)
#define CY_ISR_PulsesDone_ISR_H


#include <cytypes.h>
#include <cyfitter.h>

/* Interrupt Controller API. */
void PulsesDone_ISR_Start(void);
void PulsesDone_ISR_StartEx(cyisraddress address);
void PulsesDone_ISR_Stop(void);

CY_ISR_PROTO(PulsesDone_ISR_Interrupt);

void PulsesDone_ISR_SetVector(cyisraddress address);
cyisraddress PulsesDone_ISR_GetVector(void);

void PulsesDone_ISR_SetPriority(uint8 priority);
uint8 PulsesDone_ISR_GetPriority(void);

void PulsesDone_ISR_Enable(void);
uint8 PulsesDone_ISR_GetState(void);
void PulsesDone_ISR_Disable(void);

void PulsesDone_ISR_SetPending(void);
void PulsesDone_ISR_ClearPending(void);


/* Interrupt Controller Constants */

/* Address of the INTC.VECT[x] register that contains the Address of the PulsesDone_ISR ISR. */
#define PulsesDone_ISR_INTC_VECTOR            ((reg32 *) PulsesDone_ISR__INTC_VECT)

/* Address of the PulsesDone_ISR ISR priority. */
#define PulsesDone_ISR_INTC_PRIOR             ((reg8 *) PulsesDone_ISR__INTC_PRIOR_REG)

/* Priority of the PulsesDone_ISR interrupt. */
#define PulsesDone_ISR_INTC_PRIOR_NUMBER      PulsesDone_ISR__INTC_PRIOR_NUM

/* Address of the INTC.SET_EN[x] byte to bit enable PulsesDone_ISR interrupt. */
#define PulsesDone_ISR_INTC_SET_EN            ((reg32 *) PulsesDone_ISR__INTC_SET_EN_REG)

/* Address of the INTC.CLR_EN[x] register to bit clear the PulsesDone_ISR interrupt. */
#define PulsesDone_ISR_INTC_CLR_EN            ((reg32 *) PulsesDone_ISR__INTC_CLR_EN_REG)

/* Address of the INTC.SET_PD[x] register to set the PulsesDone_ISR interrupt state to pending. */
#define PulsesDone_ISR_INTC_SET_PD            ((reg32 *) PulsesDone_ISR__INTC_SET_PD_REG)

/* Address of the INTC.CLR_PD[x] register to clear the PulsesDone_ISR interrupt. */
#define PulsesDone_ISR_INTC_CLR_PD            ((reg32 *) PulsesDone_ISR__INTC_CLR_PD_REG)


#endif /* CY_ISR_PulsesDone_ISR_H */


/* [] END OF FILE */
