/*******************************************************************************
* File Name: Dout.h  
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

#if !defined(CY_PINS_Dout_H) /* Pins Dout_H */
#define CY_PINS_Dout_H

#include "cytypes.h"
#include "cyfitter.h"
#include "cypins.h"
#include "Dout_aliases.h"

/* Check to see if required defines such as CY_PSOC5A are available */
/* They are defined starting with cy_boot v3.0 */
#if !defined (CY_PSOC5A)
    #error Component cy_pins_v2_10 requires cy_boot v3.0 or later
#endif /* (CY_PSOC5A) */

/* APIs are not generated for P15[7:6] */
#if !(CY_PSOC5A &&\
	 Dout__PORT == 15 && ((Dout__MASK & 0xC0) != 0))


/***************************************
*        Function Prototypes             
***************************************/    

void    Dout_Write(uint8 value) ;
void    Dout_SetDriveMode(uint8 mode) ;
uint8   Dout_ReadDataReg(void) ;
uint8   Dout_Read(void) ;
uint8   Dout_ClearInterrupt(void) ;


/***************************************
*           API Constants        
***************************************/

/* Drive Modes */
#define Dout_DM_ALG_HIZ         PIN_DM_ALG_HIZ
#define Dout_DM_DIG_HIZ         PIN_DM_DIG_HIZ
#define Dout_DM_RES_UP          PIN_DM_RES_UP
#define Dout_DM_RES_DWN         PIN_DM_RES_DWN
#define Dout_DM_OD_LO           PIN_DM_OD_LO
#define Dout_DM_OD_HI           PIN_DM_OD_HI
#define Dout_DM_STRONG          PIN_DM_STRONG
#define Dout_DM_RES_UPDWN       PIN_DM_RES_UPDWN

/* Digital Port Constants */
#define Dout_MASK               Dout__MASK
#define Dout_SHIFT              Dout__SHIFT
#define Dout_WIDTH              1u


/***************************************
*             Registers        
***************************************/

/* Main Port Registers */
/* Pin State */
#define Dout_PS                     (* (reg8 *) Dout__PS)
/* Data Register */
#define Dout_DR                     (* (reg8 *) Dout__DR)
/* Port Number */
#define Dout_PRT_NUM                (* (reg8 *) Dout__PRT) 
/* Connect to Analog Globals */                                                  
#define Dout_AG                     (* (reg8 *) Dout__AG)                       
/* Analog MUX bux enable */
#define Dout_AMUX                   (* (reg8 *) Dout__AMUX) 
/* Bidirectional Enable */                                                        
#define Dout_BIE                    (* (reg8 *) Dout__BIE)
/* Bit-mask for Aliased Register Access */
#define Dout_BIT_MASK               (* (reg8 *) Dout__BIT_MASK)
/* Bypass Enable */
#define Dout_BYP                    (* (reg8 *) Dout__BYP)
/* Port wide control signals */                                                   
#define Dout_CTL                    (* (reg8 *) Dout__CTL)
/* Drive Modes */
#define Dout_DM0                    (* (reg8 *) Dout__DM0) 
#define Dout_DM1                    (* (reg8 *) Dout__DM1)
#define Dout_DM2                    (* (reg8 *) Dout__DM2) 
/* Input Buffer Disable Override */
#define Dout_INP_DIS                (* (reg8 *) Dout__INP_DIS)
/* LCD Common or Segment Drive */
#define Dout_LCD_COM_SEG            (* (reg8 *) Dout__LCD_COM_SEG)
/* Enable Segment LCD */
#define Dout_LCD_EN                 (* (reg8 *) Dout__LCD_EN)
/* Slew Rate Control */
#define Dout_SLW                    (* (reg8 *) Dout__SLW)

/* DSI Port Registers */
/* Global DSI Select Register */
#define Dout_PRTDSI__CAPS_SEL       (* (reg8 *) Dout__PRTDSI__CAPS_SEL) 
/* Double Sync Enable */
#define Dout_PRTDSI__DBL_SYNC_IN    (* (reg8 *) Dout__PRTDSI__DBL_SYNC_IN) 
/* Output Enable Select Drive Strength */
#define Dout_PRTDSI__OE_SEL0        (* (reg8 *) Dout__PRTDSI__OE_SEL0) 
#define Dout_PRTDSI__OE_SEL1        (* (reg8 *) Dout__PRTDSI__OE_SEL1) 
/* Port Pin Output Select Registers */
#define Dout_PRTDSI__OUT_SEL0       (* (reg8 *) Dout__PRTDSI__OUT_SEL0) 
#define Dout_PRTDSI__OUT_SEL1       (* (reg8 *) Dout__PRTDSI__OUT_SEL1) 
/* Sync Output Enable Registers */
#define Dout_PRTDSI__SYNC_OUT       (* (reg8 *) Dout__PRTDSI__SYNC_OUT) 


#if defined(Dout__INTSTAT)  /* Interrupt Registers */

    #define Dout_INTSTAT                (* (reg8 *) Dout__INTSTAT)
    #define Dout_SNAP                   (* (reg8 *) Dout__SNAP)

#endif /* Interrupt Registers */

#endif /* CY_PSOC5A... */

#endif /*  CY_PINS_Dout_H */


/* [] END OF FILE */
