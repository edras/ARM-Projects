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
 - Toggles the LED's every second when the switch is pressed
 - Demonstrates the use of callback functions like those implemented in MCC/Harmony.
    - the callback object structure contains both the pointer to the callback function and 
        a pointer to a variable to show how to pass additional pointers to the callback 
        function
    - many "convenience" macros are provided to show how the callbacks can be used for each
        specific timer functionality

*****************************************************************************************/


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
is 0.1875MHZ (5.333us).  The timer is set up as an 16-bit counter.  To get a 10ms interrupt, 
10ms/5.333us = 1875.  
*/
#define TC3_CC0					1875


/*
Switch is debounced each TC3 interrupt interval (10ms).  It starts from the DEBOUNCE_START value and
counts down if the switch is pressed.  If it reaches 0, the switch is pressed. 50 x 10ms is 500ms.
Variable i is incremented every interrupt and the comparison is made to FULL_DEBOUNCE_COUNTS. When
the number of FULL_DEBOUNCE_COUNTS is reached, the callback function is called. 500ms x 2 = 1s blink
interval.
*/
#define DEBOUNCE_START			50 
#define DEBOUNCE_HIGH_LIMIT     100
#define FULL_DEBOUNCE_COUNTS    2


// *****************************************************************************
/* Convenience macros for TC capture status */
// *****************************************************************************
#define TC_CAPTURE_STATUS_NONE              0U

/* Capture status overflow */
#define TC_CAPTURE_STATUS_OVERFLOW          TC_INTFLAG_OVF_Msk

/* Capture status error */
#define TC_CAPTURE_STATUS_ERROR             TC_INTFLAG_ERR_Msk

/* Capture status ready for channel 0 */
#define TC_CAPTURE_STATUS_CAPTURE0_READY    TC_INTFLAG_MC0_Msk

/* Capture status ready for channel 1 */
#define TC_CAPTURE_STATUS_CAPTURE1_READY    TC_INTFLAG_MC1_Msk

#define TC_CAPTURE_STATUS_MSK               (TC_CAPTURE_STATUS_OVERFLOW | TC_CAPTURE_STATUS_ERROR | TC_CAPTURE_STATUS_CAPTURE0_READY | TC_CAPTURE_STATUS_CAPTURE1_READY) 

/* Invalid compare status */
#define TC_CAPTURE_STATUS_INVALID           0xFFFFFFFFU


// *****************************************************************************
/* Convenience macros for TC compare status */
// *****************************************************************************
#define TC_COMPARE_STATUS_NONE          0U
/*  overflow */
#define TC_COMPARE_STATUS_OVERFLOW      TC_INTFLAG_OVF_Msk
/* match compare 0 */
#define TC_COMPARE_STATUS_MATCH0        TC_INTFLAG_MC0_Msk
/* match compare 1 */
#define TC_COMPARE_STATUS_MATCH1        TC_INTFLAG_MC1_Msk

#define TC_COMPARE_STATUS_MSK           (TC_COMPARE_STATUS_OVERFLOW | TC_COMPARE_STATUS_MATCH0 | TC_COMPARE_STATUS_MATCH1)

/* Invalid capture status */
#define TC_COMPARE_STATUS_INVALID       0xFFFFFFFFU


// *****************************************************************************
/* Convenience macros for TC timer status */
// *****************************************************************************

#define TC_TIMER_STATUS_NONE        0U
/*  overflow */
#define TC_TIMER_STATUS_OVERFLOW    TC_INTFLAG_OVF_Msk

/* match compare 1 */
#define TC_TIMER_STATUS_MATCH1      TC_INTFLAG_MC1_Msk

#define TC_TIMER_STATUS_MSK         (TC_TIMER_STATUS_OVERFLOW | TC_TIMER_STATUS_MATCH1)

/* Invalid timer status */
#define TC_TIMER_STATUS_INVALID     0xFFFFFFFFU



#endif /* CONSTANTS_H_ */