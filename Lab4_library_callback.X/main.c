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


MPLABX v6.00
XC32 v4.10
DFP 3.6.95 
 
rev1             Denny Hopp
                 7/20/22
                 - class project release
******************************************************************************************/

#include <xc.h> 

#define DEBOUNCE_INITIAL_LOAD   10
#define DEBOUNCE_HIGH_SET       20
#define DEBOUNCE_LOW_SET        0


/*******************************************************************************
* unsigned char pin_monitor(void) 
*
* FUNCTION:  Performs switch debouncing
* RETURNED VALUES: Status of switch position (1 for a switch press and 0 for 
*               not pressed)
* PARAMETERS: None 
*******************************************************************************/

//This function is run in its entirety every time it is called. It monitors the
// switch input. If the switch is low, u8pinDebounce is decremented. If it is
// high, u8pinDebounce is incremented. If the count reaches 0, the pin switch
// is pressed. If it reaches the DEBOUNCE_HIGH_SET value, it is released. A value
// of 1 is returned for a switch press and a value of 0 is returned for a
// released switch.
unsigned char pin_monitor(void)
{
    unsigned char u8pinDebounce = DEBOUNCE_INITIAL_LOAD;
    
    while(1)
    {
        if(!(PORT_REGS->GROUP[1].PORT_IN & PORT_PB31))
        {
            if(--u8pinDebounce == DEBOUNCE_LOW_SET)
    		{
        		return 1;
    		}
        }
			
    	else 
        {
            if(++u8pinDebounce >= DEBOUNCE_HIGH_SET)
    		{
        		return 0;
    		}
        }
    }
}


