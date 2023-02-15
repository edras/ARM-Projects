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

/*****************************************************************************************
FUNCTIONALITY:

This project uses the SAME54 Xplained board.  The project has the following functionality:
 - Shows the DFLL setup in both open and closed loop modes
 - Shows timer interrupt and LED output control
 - Shows how to read an input switch
 - Demonstrates the implementation of an interrupt that resides in a separate file. That
    timer interrupt calls callback execution in the application code. This function then 
    passes a pointer back to the library code to call a function that toggles the LED's 
    in the callback function that resides there.
 
When SW0 is pressed, the LED's on both the SAME54 Xplained board and IO Xplained board
 toggle every second.  When the switch is released, the LED's remain in their current state.

*****************************************************************************************/

/****************************************************************************************
REVISION HISTORY
 
 MPLABX 6.00
 XC32 v4.10
 DFP v3.6.95
 
rev1            Denny Hopp
                9/16/22
                - class project release
                
****************************************************************************************/ 
                

#ifndef CONSTANTS_H_
#define CONSTANTS_H_

//Use EXT1 on the Xplained Pro board to interface to the I/O Xplained board

//Pin names
#define XPLAINED_LED            PORT_PB08
#define SW0                     PORT_PB31
#define GCLK0_OUT               PORT_PB14
#define E54_LED_OUT             PORT_PC18

/*
Frequency of the system clock is 48MHZ.  The divider at TC3 is 256, so the frequency at TC3  
is 0.1875MHZ (5.333us).  The timer is set up as an 16-bit counter.  To get a 10ms interrupt, 10ms/5.333us = 
1875.  
*/
#define TC3_CC0					1875


//Switch is debounced each TC3 interrupt interval (10ms).  It starts from the DEBOUNCE_START value and
// counts down if the switch is pressed.  If it reaches 0, the switch is pressed. 50 x 10ms is 500ms.
// Variable i is incremented every interrupt and the comparison is made to FULL_DEBOUNCE_COUNTS. When
// the number of FULL_DEBOUNCE_COUNTS is reached, the callback function is called. 500ms x 2 = 1s blink
// interval.
#define DEBOUNCE_START			50 
#define DEBOUNCE_HIGH_LIMIT     100
#define FULL_DEBOUNCE_COUNTS    2


#endif /* CONSTANTS_H_ */