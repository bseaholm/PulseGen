/*******************************************************************************
* File Name: Tc.h  
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

#if !defined(CY_PINS_Tc_H) /* Pins Tc_H */
#define CY_PINS_Tc_H

#include "cytypes.h"
#include "cyfitter.h"
#include "cypins.h"
#include "Tc_aliases.h"

/* Check to see if required defines such as CY_PSOC5A are available */
/* They are defined starting with cy_boot v3.0 */
#if !defined (CY_PSOC5A)
    #error Component cy_pins_v2_10 requires cy_boot v3.0 or later
#endif /* (CY_PSOC5A) */

/* APIs are not generated for P15[7:6] */
#if !(CY_PSOC5A &&\
	 Tc__PORT == 15 && ((Tc__MASK & 0xC0) != 0))


/***************************************
*        Function Prototypes             
***************************************/    

void    Tc_Write(uint8 value) ;
void    Tc_SetDriveMode(uint8 mode) ;
uint8   Tc_ReadDataReg(void) ;
uint8   Tc_Read(void) ;
uint8   Tc_ClearInterrupt(void) ;


/***************************************
*           API Constants        
***************************************/

/* Drive Modes */
#define Tc_DM_ALG_HIZ         PIN_DM_ALG_HIZ
#define Tc_DM_DIG_HIZ         PIN_DM_DIG_HIZ
#define Tc_DM_RES_UP          PIN_DM_RES_UP
#define Tc_DM_RES_DWN         PIN_DM_RES_DWN
#define Tc_DM_OD_LO           PIN_DM_OD_LO
#define Tc_DM_OD_HI           PIN_DM_OD_HI
#define Tc_DM_STRONG          PIN_DM_STRONG
#define Tc_DM_RES_UPDWN       PIN_DM_RES_UPDWN

/* Digital Port Constants */
#define Tc_MASK               Tc__MASK
#define Tc_SHIFT              Tc__SHIFT
#define Tc_WIDTH              1u


/***************************************
*             Registers        
***************************************/

/* Main Port Registers */
/* Pin State */
#define Tc_PS                     (* (reg8 *) Tc__PS)
/* Data Register */
#define Tc_DR                     (* (reg8 *) Tc__DR)
/* Port Number */
#define Tc_PRT_NUM                (* (reg8 *) Tc__PRT) 
/* Connect to Analog Globals */                                                  
#define Tc_AG                     (* (reg8 *) Tc__AG)                       
/* Analog MUX bux enable */
#define Tc_AMUX                   (* (reg8 *) Tc__AMUX) 
/* Bidirectional Enable */                                                        
#define Tc_BIE                    (* (reg8 *) Tc__BIE)
/* Bit-mask for Aliased Register Access */
#define Tc_BIT_MASK               (* (reg8 *) Tc__BIT_MASK)
/* Bypass Enable */
#define Tc_BYP                    (* (reg8 *) Tc__BYP)
/* Port wide control signals */                                                   
#define Tc_CTL                    (* (reg8 *) Tc__CTL)
/* Drive Modes */
#define Tc_DM0                    (* (reg8 *) Tc__DM0) 
#define Tc_DM1                    (* (reg8 *) Tc__DM1)
#define Tc_DM2                    (* (reg8 *) Tc__DM2) 
/* Input Buffer Disable Override */
#define Tc_INP_DIS                (* (reg8 *) Tc__INP_DIS)
/* LCD Common or Segment Drive */
#define Tc_LCD_COM_SEG            (* (reg8 *) Tc__LCD_COM_SEG)
/* Enable Segment LCD */
#define Tc_LCD_EN                 (* (reg8 *) Tc__LCD_EN)
/* Slew Rate Control */
#define Tc_SLW                    (* (reg8 *) Tc__SLW)

/* DSI Port Registers */
/* Global DSI Select Register */
#define Tc_PRTDSI__CAPS_SEL       (* (reg8 *) Tc__PRTDSI__CAPS_SEL) 
/* Double Sync Enable */
#define Tc_PRTDSI__DBL_SYNC_IN    (* (reg8 *) Tc__PRTDSI__DBL_SYNC_IN) 
/* Output Enable Select Drive Strength */
#define Tc_PRTDSI__OE_SEL0        (* (reg8 *) Tc__PRTDSI__OE_SEL0) 
#define Tc_PRTDSI__OE_SEL1        (* (reg8 *) Tc__PRTDSI__OE_SEL1) 
/* Port Pin Output Select Registers */
#define Tc_PRTDSI__OUT_SEL0       (* (reg8 *) Tc__PRTDSI__OUT_SEL0) 
#define Tc_PRTDSI__OUT_SEL1       (* (reg8 *) Tc__PRTDSI__OUT_SEL1) 
/* Sync Output Enable Registers */
#define Tc_PRTDSI__SYNC_OUT       (* (reg8 *) Tc__PRTDSI__SYNC_OUT) 


#if defined(Tc__INTSTAT)  /* Interrupt Registers */

    #define Tc_INTSTAT                (* (reg8 *) Tc__INTSTAT)
    #define Tc_SNAP                   (* (reg8 *) Tc__SNAP)

#endif /* Interrupt Registers */

#endif /* CY_PSOC5A... */

#endif /*  CY_PINS_Tc_H */


/* [] END OF FILE */
