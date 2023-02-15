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

// Config Source code for XC32 compiler.
// USER_WORD_0
#pragma config BOD33_DIS = SET
#pragma config BOD33USERLEVEL = 0x1C // Enter Hexadecimal value
#pragma config BOD33_ACTION = RESET
#pragma config BOD33_HYST = 0x2 // Enter Hexadecimal value
#pragma config NVMCTRL_BOOTPROT = 0xF

// USER_WORD_1
#pragma config NVMCTRL_SEESBLK = 0x0 // Enter Hexadecimal value
#pragma config NVMCTRL_SEEPSZ = 0x0 // Enter Hexadecimal value
#pragma config RAMECC_ECCDIS = SET
#pragma config WDT_ENABLE = CLEAR
#pragma config WDT_ALWAYSON = CLEAR
#pragma config WDT_PER = CYC16384
#pragma config WDT_WINDOW = CYC16384
#pragma config WDT_EWOFFSET = CYC16384
#pragma config WDT_WEN = CLEAR

// USER_WORD_2
#pragma config NVMCTRL_REGION_LOCKS = 0xFFFFFFFF // Enter Hexadecimal value


#include <xc.h> 
#include "constants.h"
#include "typedef.h"
#include "stddef.h"


//GLOBAL VARIABLES
volatile uint16_t u16debounceCounter;
volatile uint8_t i;
TC_TIMER_CALLBACK_OBJ TC3_CallbackObject;


//PROTOTYPES
void systemInit(void);
void enable_interrupts(void);


//callback is the routine that will be called for the callback registration.
// context can be used to add other parameters (variables, etc...) if they
// are required in the callback. It is not used in this example.
void TC3_TimerCallbackRegister( TC_TIMER_CALLBACK callback, uintptr_t context )
{
    TC3_CallbackObject.callback = callback;
    TC3_CallbackObject.context = context;
}


/*******************************************************************************
* void led_toggle_function(void)   
*
* FUNCTION:  Toggles the LED's
* RETURNED VALUES: None 
* PARAMETERS: None
*******************************************************************************/
void led_toggle_function(void) 
{
    PORT_REGS->GROUP[1].PORT_OUTTGL = XPLAINED_LED;
    PORT_REGS->GROUP[2].PORT_OUTTGL = E54_LED_OUT;            
}


/*******************************************************************************
* void callback_execution(TC_TIMER_STATUS status, uintptr_t context) 
*
* FUNCTION:  Callback execution function that is passed a function pointer and
*               calls the led_toggle function if the switch is pressed
* RETURNED VALUES: None
* PARAMETERS: TC_TIMER_STATUS status, uintptr_t context  
*******************************************************************************/
void callback_execution(TC_TIMER_STATUS status, uintptr_t context)
{
//We could check for specific TC3 functionality to perform different tasks for
// overflow, capture or compare. In this case, the timer overflow is chec
    if(status & TC_COMPARE_STATUS_MATCH0)
    {    
//Check the switch level to see if it is pressed.  SW0 is a mask value that is declared
// in the "constants.h" file.  If it is low, the switch is pressed and the 'u16debounceCounter'
// variable is decremented once on each interrupt.  If the counter reaches 0, the switch is
// pressed and i is incremented.  If the switch is not pressed, the value in the
// counter is reaches the 'DEBOUNCE_HIGH_LIMIT' signifying a non-pressed switch. The
// led_toggle_function is called if the switch is pressed.    
        if(!(PORT_REGS->GROUP[1].PORT_IN & SW0))
        {
            if(--u16debounceCounter == 0)
    		{
        		u16debounceCounter = DEBOUNCE_START;
               
               	if(++i >= FULL_DEBOUNCE_COUNTS)
                {
                    i = 0;
                    led_toggle_function( );  
                }
            }
    	} 
    
    	else
        {
            if(++u16debounceCounter >= DEBOUNCE_HIGH_LIMIT)
        	{
            	u16debounceCounter = DEBOUNCE_START;
            }    
        }
    }
}

/***********************************************************************************
void TC3_Handler(void)

FUNCTION:  Interrupt handler for the TC3 interrupt
        		- Interrupt occurs every 1ms
                - calls the debounce callback function using the registered 
                    callback
***********************************************************************************/
void TC3_Handler()
{
//Check for a TC3 interrupt by looking at the INTENSET register. Make sure that 
// an interrupt source is enabled.
    if(TC3_REGS->COUNT16.TC_INTENSET != 0)
    {
        TC_TIMER_STATUS status;

//save the interrupt flag register        
        status = (TC_TIMER_STATUS)TC3_REGS->COUNT16.TC_INTFLAG;
        
//clear TC3 interrupt flags (TC_INTFLAG_Msk is in tc.h)       
        TC3_REGS->COUNT16.TC_INTFLAG = (uint8_t)TC_INTFLAG_Msk;
        
//if interrupt flag is not empty or NULL, call the callback function
        if((status != TC_TIMER_STATUS_NONE) && (TC3_CallbackObject.callback != NULL))
        {
            TC3_CallbackObject.callback(status, TC3_CallbackObject.context);
        }
    }
}


/*******************************************************************************
* int main(void) 
*
* FUNCTION:  Main routine that initializes the microcontroller and runs an empty
*               while(1) loop
* RETURNED VALUES: None
* PARAMETERS: None
*******************************************************************************/
int main(void)
{
//Initialize the SAM system
    systemInit();
	
//Enable interrupts
	enable_interrupts( );
	
//Initialize switch debounce counter
	u16debounceCounter = DEBOUNCE_START;
    
//Register the callback    
    TC3_TimerCallbackRegister(callback_execution, 0);

//while( ) loop is empty since the interrupt handles the switch debounce and
// calling of the callback function    
    while (1) 
    {

    }
}
