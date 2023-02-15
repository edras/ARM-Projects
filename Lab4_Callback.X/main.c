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
#include "main.h"
#include "constants.h"


/*******************************************************************************
* void callback_execution(unsigned char(*fn)(void)) 
*
* FUNCTION:  Callback execution function that is passed a function pointer and
*               returns the status of the switch position
* RETURNED VALUES: Status of switch position (1 for a switch press and 0 for 
*               not pressed)
* PARAMETERS: Function pointer for the callback function 
*******************************************************************************/
unsigned char callback_execution(unsigned char(*fn)(void))
{	
	fn( );
}

//pin_monitor function is in the included object file
unsigned char (*functionPointer)(void) = &pin_monitor;


/*******************************************************************************
* int main(void)
*
* FUNCTION:  main function that initializes the microcontroller hardware and calls
*               the callback_execution( ) function. The return value of this
*               function is used to turn the LED's on or off.
* RETURNED VALUES: None
* PARAMETERS: None 
*******************************************************************************/
int main(void)
{
//Initialize the SAM system
    systemInit();
    
    while (1) 
    {
//call the callback_execution( ) function to get the switch status        
        u8callbackResult = callback_execution(functionPointer);

//if the switch is pressed, turn on the LED's. If it is not pressed, turn
// them off        
        if(!u8callbackResult)
        {
            PORT_REGS->GROUP[1].PORT_OUTSET = XPLAINED_LED;
            PORT_REGS->GROUP[2].PORT_OUTSET = E54_LED_OUT;            
        }
        
        else
        {
            PORT_REGS->GROUP[1].PORT_OUTCLR = XPLAINED_LED;;
            PORT_REGS->GROUP[2].PORT_OUTCLR = E54_LED_OUT;                        
        }
    }
}
