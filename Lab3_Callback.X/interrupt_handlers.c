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
#include "interrupt_handlers.h"


/***********************************************************************************
void TC3_Handler(void)

FUNCTION:  Interrupt handler for the TC3 interrupt
				- Interrupt occurs every 10ms
                - call the callback_execution( ) function every interrupt
***********************************************************************************/
void TC3_Handler()
{
//Check for a TC3 interrupt by looking at the OVF bit in the INTFLAG register.  If it
// is set, clear it by setting the bit. Then call the callback_execution( ) function.
// Send the pointer to the callback function.
    if(TC3_REGS->COUNT16.TC_INTFLAG & TC_INTFLAG_OVF(1))
    {
        TC3_REGS->COUNT16.TC_INTFLAG = TC_INTFLAG_OVF(1);
        callback_execution(functionPointer);
    }
}


/***********************************************************************************
void enable_interrupts(void)

FUNCTION:  Enable the TC3 interrupt
***********************************************************************************/
void enable_interrupts(void)
{
	NVIC_EnableIRQ(TC3_IRQn);
}
