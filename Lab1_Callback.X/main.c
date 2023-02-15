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

LAB1
 
This code shows a basic demonstration of a callback. The main( ) function continuously
calls the callback_execution( ) function. That function is passed a function pointer to call
the callback_function( ). It increments i and if i >= 5, the callback_function( ) is called.
The callback_function( ) then continuously increments u32z.

This is an example of a continuously polled callback algorithm.

This project uses the simulator to demonstrate the callback functionality. 

*****************************************************************************************/

/*******************************************************************************
* Revisions 
*
* MPLABX 6.10
* XC32 v4.10
* DFP 3.6.95
*
* rev1              Denny Hopp
*                   7/20/22
*                   - class release project  
*******************************************************************************/

#include <xc.h>

//Global variables
volatile uint8_t i;
volatile uint32_t u32z;


/*******************************************************************************
* void callback_function(void) 
*
* FUNCTION:  Increments u32z
* RETURNED VALUES: None
* PARAMETERS: None 
*******************************************************************************/
void callback_function(void) 
{
//increment z every time this function is called    
	u32z++;
}


//The function pointer is initialized to be the address 
// of the callback function. This is the callback registration.
void (*functionPointer)(void) = &callback_function;


/*******************************************************************************
* void callback_execution(void(*fn)(void)) 
*
* FUNCTION:  Increments i and if it is equal to 5 the function calls the function
*               pointed to by the function pointer parameter.
* RETURNED VALUES: None
* PARAMETERS: Function pointer 
*******************************************************************************/
void callback_execution(void(*fn)(void))
{
//increment i and if it is equal to five, call the callback function that is
// registered to the function pointer that is passed as a parameter (fn)	
	if(i++ == 5)
	{
        i = 0;
		fn( );
	}
}


/*******************************************************************************
* void main(void) 
*
* FUNCTION:  Continuously calls the callback_execution( ) function
* RETURNED VALUES: None
* PARAMETERS: None 
*******************************************************************************/
void main(void) 
{
    while(1)
    {
//Execute the callback execution function periodically to perform
// an increment of i        
    	callback_execution(functionPointer);
    }
}

