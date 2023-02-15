/*****************************************************************************************

DISCLAIMER OF LIABILITY REGARDING CODE AND SERVICES

Upon your request and for your convenience Microchip Technology Incorporated
("Microchip") has modified your code.  Your acceptance and/or use of this
modified code constitutes agreement to the terms and conditions of this notice.

CODE ACCOMPANYING THIS MESSAGE AND RELATED SERVICES ARE SUPPLIED BY MICROCHIP "AS IS".
NO WARRANTIES, WHETHER EXPRESS, IMPLIED OR STATUTORY, INCLUDING, BUT NOT LIMITED
TO, IMPLIED WARRANTIES OF NON-INFRINGEMENT, MERCHANTABILITY AND FITNESS FOR A
PARTICULAR PURPOSE APPLY TO THIS CODE, ITS INTERACTION WITH MICROCHIP’S PRODUCTS,
COMBINATION WITH ANY OTHER PRODUCTS, OR USE IN ANY APPLICATION.

YOU ACKNOWLEDGE AND AGREE THAT, IN NO EVENT, SHALL MICROCHIP BE
LIABLE, WHETHER IN CONTRACT, WARRANTY, TORT (INCLUDING NEGLIGENCE OR BREACH OF
STATUTORY DUTY), STRICT LIABILITY, INDEMNITY, CONTRIBUTION, OR OTHERWISE, FOR ANY
INDIRECT, SPECIAL, PUNITIVE, EXEMPLARY, INCIDENTAL OR CONSEQUENTIAL LOSS, DAMAGE,
FOR COST OR EXPENSE OF ANY KIND WHATSOEVER RELATED TO THE CODE, HOWSOEVER CAUSED,
EVEN IF MICROCHIP HAS BEEN ADVISED OF THE POSSIBILITY OR THE DAMAGES ARE FORESEEABLE.
TO THE FULLEST EXTENT ALLOWABLE BY LAW, MICROCHIP'S TOTAL LIABILITY ON ALL CLAIMS
IN ANY WAY RELATED TO THIS CODE, SHALL NOT EXCEED THE PRICE YOU PAID DIRECTLY TO
MICROCHIP SPECIFICALLY TO HAVE THIS CODE DEVELOPED.

You agree that you are solely responsible for testing the code and determining its
suitability.  Microchip has no obligation to modify, test, certify, or support the code.
******************************************************************************************/

#include <xc.h> 
#include "constants.h"



/*******************************************************************************
* void DFLL48M_open_loop_init(void)
*
*	FUNCTION:  Initialize the DFLL48M in open loop mode and enable CLKGEN0 to 
*				receive this clock.  CLKGEN0 feeds the CPU.
*******************************************************************************/
 void DFLL48M_open_loop_init(void)
 {
//Enable the DFLL.  It is already enabled by default but is included here for
// completeness.  Must check for synchronization since this bit is write-synchronized
    OSCCTRL_REGS->OSCCTRL_DFLLCTRLA |= OSCCTRL_DFLLCTRLA_ENABLE(1);
    while(OSCCTRL_REGS->OSCCTRL_DFLLSYNC & OSCCTRL_DFLLSYNC_ENABLE(1));
     
//Wait for DFLL to be stable
    while(!(OSCCTRL_REGS->OSCCTRL_STATUS & OSCCTRL_STATUS_DFLLRDY(1)));
    
// Generic clock generator 0 is fed by DFLL, divide by 1 to get a 48MHZ CPU clock
    GCLK_REGS->GCLK_GENCTRL[0] = GCLK_GENCTRL_SRC_DFLL | GCLK_GENCTRL_GENEN(1)
            | GCLK_GENCTRL_DIVSEL(0) | GCLK_GENCTRL_OE(1) | GCLK_GENCTRL_DIV(1);
    
//Check if synchronization is busy on GENCTRL[0] register
    while(GCLK_REGS->GCLK_SYNCBUSY & GCLK_SYNCBUSY_GENCTRL_GCLK0);
}


/*******************************************************************************
* void DFLL48M_closed_loop_init(void)
*
*	FUNCTION:  Sets the DFLL48M with external 32KHZ crystal as reference 
*				in closed loop mode
*******************************************************************************/
 void DFLL48M_closed_loop_init(void)
 {
//Start the external 32KHz crystal to be used as the DFLL reference
    OSC32KCTRL_REGS->OSC32KCTRL_XOSC32K = OSC32KCTRL_XOSC32K_STARTUP(0) 
            | OSC32KCTRL_XOSC32K_ENABLE(1) | OSC32KCTRL_XOSC32K_CGM(0)
            | OSC32KCTRL_XOSC32K_EN32K(1) | OSC32KCTRL_XOSC32K_XTALEN(1);
     
//Wait for 32KHZ external clock to be ready 
    while(!(OSC32KCTRL_REGS->OSC32KCTRL_STATUS & OSC32KCTRL_STATUS_XOSC32KRDY(1))); 
      
//Peripheral control register 0 is used to direct the CLK GEN3 output to the DFLL
    GCLK_REGS->GCLK_PCHCTRL[0] = GCLK_PCHCTRL_GEN_GCLK3 | GCLK_PCHCTRL_CHEN(1);
 
//External 32KHZ crystal oscillator fed to Generic Clock Generator 3
    GCLK_REGS->GCLK_GENCTRL[3] = GCLK_GENCTRL_DIVSEL(0) | GCLK_GENCTRL_GENEN(1)
            | GCLK_GENCTRL_SRC_XOSC32K | GCLK_GENCTRL_DIV(1);
    
//Check if synchronization is busy on GENCTRL[3] register
    while(GCLK_REGS->GCLK_SYNCBUSY & GCLK_SYNCBUSY_GENCTRL_GCLK3);
   
//Set coarse and fine step values.  1465 * 32.768KHZ get close to the 48MHZ DFLL value
    OSCCTRL_REGS->OSCCTRL_DFLLMUL = OSCCTRL_DFLLMUL_MUL(1465) | OSCCTRL_DFLLMUL_CSTEP(5)
            | OSCCTRL_DFLLMUL_FSTEP(1);
 
//DFLLMUL register is write-synchronized
    while(OSCCTRL_REGS->OSCCTRL_DFLLSYNC & OSCCTRL_DFLLSYNC_DFLLMUL(1));
    
//Set closed loop mode
    OSCCTRL_REGS->OSCCTRL_DFLLCTRLB = OSCCTRL_DFLLCTRLB_MODE(1);
    
//DFLLCTRLB register is write-synchronized
    while(OSCCTRL_REGS->OSCCTRL_DFLLSYNC & OSCCTRL_DFLLSYNC_DFLLCTRLB(1));    
    
//Wait for DFLL to stabilize    
    while(!(OSCCTRL_REGS->OSCCTRL_STATUS & OSCCTRL_STATUS_DFLLRDY(1)));    
}


 /*******************************************************************************
 * init_ports(void)
 *
 *	FUNCTION:  Initialize the port pins
 *******************************************************************************/
void init_ports(void)
{
//Make LED output high to keep it off
    PORT_REGS->GROUP[1].PORT_OUTSET = XPLAINED_LED;
    
//Configure PB08 as an output for the I/O Xplained LED
    PORT_REGS->GROUP[1].PORT_DIRSET = XPLAINED_LED;
	
//Configure PB14 as the GCLK0 output
    PORT_REGS->GROUP[1].PORT_DIRSET = GCLK0_OUT;
    
//Configure PB31 as the SW Switch input
    PORT_REGS->GROUP[1].PORT_DIRCLR = SW0;
	
//Enable the input buffer and pull resistor for SWO
    PORT_REGS->GROUP[1].PORT_PINCFG[31] = PORT_PINCFG_INEN(1) | PORT_PINCFG_PULLEN(1);
    
//Set output high on SW0 input pin to enable the pull-up
    PORT_REGS->GROUP[1].PORT_OUTSET = SW0;
 	
//Turn on pin sampling for all pins
    PORT_REGS->GROUP[1].PORT_CTRL = PORT_CTRL_SAMPLING(0xFFFF);

//Output the system clock to Pin PB14
    PORT_REGS->GROUP[1].PORT_WRCONFIG = PORT_WRCONFIG_PMUXEN(1) | PORT_WRCONFIG_PMUX(12)
            | PORT_WRCONFIG_PINMASK(14) | PORT_WRCONFIG_WRPMUX(1) 
            | PORT_WRCONFIG_WRPINCFG(1);

//Make SAME54 Xplained LED output high to keep it off
    PORT_REGS->GROUP[2].PORT_OUTSET = E54_LED_OUT;
    
//PC18 is an output for the SAME54 Xplained LED
    PORT_REGS->GROUP[2].PORT_DIRSET = E54_LED_OUT;
    
}


/*******************************************************************************
 * init_TC3( )
 *
 *	FUNCTION:  Initialize the TC3 timer to interrupt every 1ms
 *******************************************************************************/
void init_TC3(void)
{
//Enable TC3 bus clock
    MCLK_REGS->MCLK_APBBMASK |= MCLK_APBBMASK_TC3(1);
     
//Enable channel 26 peripheral clock using Clock Generator 0.  TC3 uses channel 26
// peripheral clock controller
    GCLK_REGS->GCLK_PCHCTRL[26] = GCLK_PCHCTRL_GEN(0) | GCLK_PCHCTRL_CHEN(1);
	
//Configure TC3 as a 16-bit counter with a prescaler of 16
    TC3_REGS->COUNT16.TC_CTRLA = TC_CTRLA_MODE_COUNT16 | TC_CTRLA_PRESCALER_DIV256;
 									
//Set up TC3 to count to CC0
    TC3_REGS->COUNT16.TC_WAVE = TC_WAVE_WAVEGEN_MFRQ;
    
//Set up CC0 to count to 1ms
    TC3_REGS->COUNT16.TC_CC[0] = TC3_CC0;
    while(TC3_REGS->COUNT16.TC_SYNCBUSY & TC_SYNCBUSY_CC0(1));
	
//Enable TC3 overflow interrupt
    TC3_REGS->COUNT16.TC_INTENSET = TC_INTENSET_OVF(1);    
        
//Enable TC3
    TC3_REGS->COUNT16.TC_CTRLA |= TC_CTRLA_ENABLE(1);
    while(TC3_REGS->COUNT16.TC_SYNCBUSY & TC_SYNCBUSY_ENABLE(1));
}


/*******************************************************************************
* systemInit(void)
*
*	FUNCTION:  Initial all system clocks and peripherals
*******************************************************************************/
void systemInit(void)
{
//Initialization the system
	DFLL48M_open_loop_init( );
	DFLL48M_closed_loop_init( );
	init_ports( );
	init_TC3( );
}


/***********************************************************************************
void enable_interrupts(void)

FUNCTION:  Enable the TC3 interrupt
***********************************************************************************/
void enable_interrupts(void)
{
	NVIC_EnableIRQ(TC3_IRQn);
}
