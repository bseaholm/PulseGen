/*******************************************************************************
* File Name: PulseTrainOut.h  
* Version 2.10
*
* Description:
*  This file containts Control Register function prototypes and register defines
*
* Note:
*
********************************************************************************
* Copyright 2008-2014, Cypress Semiconductor Corporation.  All rights reserved.
* You may use this file only in accordance with the license, terms, conditions, 
* disclaimers, and limitations in the end user license agreement accompanying 
* the software package with which this file was provided.
*******************************************************************************/

#if !defined(CY_PINS_PulseTrainOut_H) /* Pins PulseTrainOut_H */
#define CY_PINS_PulseTrainOut_H

#include "cytypes.h"
#include "cyfitter.h"
#include "cypins.h"
#include "PulseTrainOut_aliases.h"

/* Check to see if required defines such as CY_PSOC5A are available */
/* They are defined starting with cy_boot v3.0 */
#if !defined (CY_PSOC5A)
    #error Component cy_pins_v2_10 requires cy_boot v3.0 or later
#endif /* (CY_PSOC5A) */

/* APIs are not generated for P15[7:6] */
#if !(CY_PSOC5A &&\
	 PulseTrainOut__PORT == 15 && ((PulseTrainOut__MASK & 0xC0) != 0))


/***************************************
*        Function Prototypes             
***************************************/    

void    PulseTrainOut_Write(uint8 value) ;
void    PulseTrainOut_SetDriveMode(uint8 mode) ;
uint8   PulseTrainOut_ReadDataReg(void) ;
uint8   PulseTrainOut_Read(void) ;
uint8   PulseTrainOut_ClearInterrupt(void) ;


/***************************************
*           API Constants        
***************************************/

/* Drive Modes */
#define PulseTrainOut_DM_ALG_HIZ         PIN_DM_ALG_HIZ
#define PulseTrainOut_DM_DIG_HIZ         PIN_DM_DIG_HIZ
#define PulseTrainOut_DM_RES_UP          PIN_DM_RES_UP
#define PulseTrainOut_DM_RES_DWN         PIN_DM_RES_DWN
#define PulseTrainOut_DM_OD_LO           PIN_DM_OD_LO
#define PulseTrainOut_DM_OD_HI           PIN_DM_OD_HI
#define PulseTrainOut_DM_STRONG          PIN_DM_STRONG
#define PulseTrainOut_DM_RES_UPDWN       PIN_DM_RES_UPDWN

/* Digital Port Constants */
#define PulseTrainOut_MASK               PulseTrainOut__MASK
#define PulseTrainOut_SHIFT              PulseTrainOut__SHIFT
#define PulseTrainOut_WIDTH              1u


/***************************************
*             Registers        
***************************************/

/* Main Port Registers */
/* Pin State */
#define PulseTrainOut_PS                     (* (reg8 *) PulseTrainOut__PS)
/* Data Register */
#define PulseTrainOut_DR                     (* (reg8 *) PulseTrainOut__DR)
/* Port Number */
#define PulseTrainOut_PRT_NUM                (* (reg8 *) PulseTrainOut__PRT) 
/* Connect to Analog Globals */                                                  
#define PulseTrainOut_AG                     (* (reg8 *) PulseTrainOut__AG)                       
/* Analog MUX bux enable */
#define PulseTrainOut_AMUX                   (* (reg8 *) PulseTrainOut__AMUX) 
/* Bidirectional Enable */                                                        
#define PulseTrainOut_BIE                    (* (reg8 *) PulseTrainOut__BIE)
/* Bit-mask for Aliased Register Access */
#define PulseTrainOut_BIT_MASK               (* (reg8 *) PulseTrainOut__BIT_MASK)
/* Bypass Enable */
#define PulseTrainOut_BYP                    (* (reg8 *) PulseTrainOut__BYP)
/* Port wide control signals */                                                   
#define PulseTrainOut_CTL                    (* (reg8 *) PulseTrainOut__CTL)
/* Drive Modes */
#define PulseTrainOut_DM0                    (* (reg8 *) PulseTrainOut__DM0) 
#define PulseTrainOut_DM1                    (* (reg8 *) PulseTrainOut__DM1)
#define PulseTrainOut_DM2                    (* (reg8 *) PulseTrainOut__DM2) 
/* Input Buffer Disable Override */
#define PulseTrainOut_INP_DIS                (* (reg8 *) PulseTrainOut__INP_DIS)
/* LCD Common or Segment Drive */
#define PulseTrainOut_LCD_COM_SEG            (* (reg8 *) PulseTrainOut__LCD_COM_SEG)
/* Enable Segment LCD */
#define PulseTrainOut_LCD_EN                 (* (reg8 *) PulseTrainOut__LCD_EN)
/* Slew Rate Control */
#define PulseTrainOut_SLW                    (* (reg8 *) PulseTrainOut__SLW)

/* DSI Port Registers */
/* Global DSI Select Register */
#define PulseTrainOut_PRTDSI__CAPS_SEL       (* (reg8 *) PulseTrainOut__PRTDSI__CAPS_SEL) 
/* Double Sync Enable */
#define PulseTrainOut_PRTDSI__DBL_SYNC_IN    (* (reg8 *) PulseTrainOut__PRTDSI__DBL_SYNC_IN) 
/* Output Enable Select Drive Strength */
#define PulseTrainOut_PRTDSI__OE_SEL0        (* (reg8 *) PulseTrainOut__PRTDSI__OE_SEL0) 
#define PulseTrainOut_PRTDSI__OE_SEL1        (* (reg8 *) PulseTrainOut__PRTDSI__OE_SEL1) 
/* Port Pin Output Select Registers */
#define PulseTrainOut_PRTDSI__OUT_SEL0       (* (reg8 *) PulseTrainOut__PRTDSI__OUT_SEL0) 
#define PulseTrainOut_PRTDSI__OUT_SEL1       (* (reg8 *) PulseTrainOut__PRTDSI__OUT_SEL1) 
/* Sync Output Enable Registers */
#define PulseTrainOut_PRTDSI__SYNC_OUT       (* (reg8 *) PulseTrainOut__PRTDSI__SYNC_OUT) 


#if defined(PulseTrainOut__INTSTAT)  /* Interrupt Registers */

    #define PulseTrainOut_INTSTAT                (* (reg8 *) PulseTrainOut__INTSTAT)
    #define PulseTrainOut_SNAP                   (* (reg8 *) PulseTrainOut__SNAP)

#endif /* Interrupt Registers */

#endif /* CY_PSOC5A... */

#endif /*  CY_PINS_PulseTrainOut_H */


/* [] END OF FILE */
