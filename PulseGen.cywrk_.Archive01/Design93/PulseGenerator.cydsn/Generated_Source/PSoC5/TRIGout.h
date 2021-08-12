/*******************************************************************************
* File Name: TRIGout.h  
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

#if !defined(CY_PINS_TRIGout_H) /* Pins TRIGout_H */
#define CY_PINS_TRIGout_H

#include "cytypes.h"
#include "cyfitter.h"
#include "cypins.h"
#include "TRIGout_aliases.h"

/* Check to see if required defines such as CY_PSOC5A are available */
/* They are defined starting with cy_boot v3.0 */
#if !defined (CY_PSOC5A)
    #error Component cy_pins_v2_10 requires cy_boot v3.0 or later
#endif /* (CY_PSOC5A) */

/* APIs are not generated for P15[7:6] */
#if !(CY_PSOC5A &&\
	 TRIGout__PORT == 15 && ((TRIGout__MASK & 0xC0) != 0))


/***************************************
*        Function Prototypes             
***************************************/    

void    TRIGout_Write(uint8 value) ;
void    TRIGout_SetDriveMode(uint8 mode) ;
uint8   TRIGout_ReadDataReg(void) ;
uint8   TRIGout_Read(void) ;
uint8   TRIGout_ClearInterrupt(void) ;


/***************************************
*           API Constants        
***************************************/

/* Drive Modes */
#define TRIGout_DM_ALG_HIZ         PIN_DM_ALG_HIZ
#define TRIGout_DM_DIG_HIZ         PIN_DM_DIG_HIZ
#define TRIGout_DM_RES_UP          PIN_DM_RES_UP
#define TRIGout_DM_RES_DWN         PIN_DM_RES_DWN
#define TRIGout_DM_OD_LO           PIN_DM_OD_LO
#define TRIGout_DM_OD_HI           PIN_DM_OD_HI
#define TRIGout_DM_STRONG          PIN_DM_STRONG
#define TRIGout_DM_RES_UPDWN       PIN_DM_RES_UPDWN

/* Digital Port Constants */
#define TRIGout_MASK               TRIGout__MASK
#define TRIGout_SHIFT              TRIGout__SHIFT
#define TRIGout_WIDTH              1u


/***************************************
*             Registers        
***************************************/

/* Main Port Registers */
/* Pin State */
#define TRIGout_PS                     (* (reg8 *) TRIGout__PS)
/* Data Register */
#define TRIGout_DR                     (* (reg8 *) TRIGout__DR)
/* Port Number */
#define TRIGout_PRT_NUM                (* (reg8 *) TRIGout__PRT) 
/* Connect to Analog Globals */                                                  
#define TRIGout_AG                     (* (reg8 *) TRIGout__AG)                       
/* Analog MUX bux enable */
#define TRIGout_AMUX                   (* (reg8 *) TRIGout__AMUX) 
/* Bidirectional Enable */                                                        
#define TRIGout_BIE                    (* (reg8 *) TRIGout__BIE)
/* Bit-mask for Aliased Register Access */
#define TRIGout_BIT_MASK               (* (reg8 *) TRIGout__BIT_MASK)
/* Bypass Enable */
#define TRIGout_BYP                    (* (reg8 *) TRIGout__BYP)
/* Port wide control signals */                                                   
#define TRIGout_CTL                    (* (reg8 *) TRIGout__CTL)
/* Drive Modes */
#define TRIGout_DM0                    (* (reg8 *) TRIGout__DM0) 
#define TRIGout_DM1                    (* (reg8 *) TRIGout__DM1)
#define TRIGout_DM2                    (* (reg8 *) TRIGout__DM2) 
/* Input Buffer Disable Override */
#define TRIGout_INP_DIS                (* (reg8 *) TRIGout__INP_DIS)
/* LCD Common or Segment Drive */
#define TRIGout_LCD_COM_SEG            (* (reg8 *) TRIGout__LCD_COM_SEG)
/* Enable Segment LCD */
#define TRIGout_LCD_EN                 (* (reg8 *) TRIGout__LCD_EN)
/* Slew Rate Control */
#define TRIGout_SLW                    (* (reg8 *) TRIGout__SLW)

/* DSI Port Registers */
/* Global DSI Select Register */
#define TRIGout_PRTDSI__CAPS_SEL       (* (reg8 *) TRIGout__PRTDSI__CAPS_SEL) 
/* Double Sync Enable */
#define TRIGout_PRTDSI__DBL_SYNC_IN    (* (reg8 *) TRIGout__PRTDSI__DBL_SYNC_IN) 
/* Output Enable Select Drive Strength */
#define TRIGout_PRTDSI__OE_SEL0        (* (reg8 *) TRIGout__PRTDSI__OE_SEL0) 
#define TRIGout_PRTDSI__OE_SEL1        (* (reg8 *) TRIGout__PRTDSI__OE_SEL1) 
/* Port Pin Output Select Registers */
#define TRIGout_PRTDSI__OUT_SEL0       (* (reg8 *) TRIGout__PRTDSI__OUT_SEL0) 
#define TRIGout_PRTDSI__OUT_SEL1       (* (reg8 *) TRIGout__PRTDSI__OUT_SEL1) 
/* Sync Output Enable Registers */
#define TRIGout_PRTDSI__SYNC_OUT       (* (reg8 *) TRIGout__PRTDSI__SYNC_OUT) 


#if defined(TRIGout__INTSTAT)  /* Interrupt Registers */

    #define TRIGout_INTSTAT                (* (reg8 *) TRIGout__INTSTAT)
    #define TRIGout_SNAP                   (* (reg8 *) TRIGout__SNAP)

#endif /* Interrupt Registers */

#endif /* CY_PSOC5A... */

#endif /*  CY_PINS_TRIGout_H */


/* [] END OF FILE */
