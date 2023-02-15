/*
 * File:   time.c
 * Author: M71906
 *
 * Created on 14. Februar 2023, 11:59
 */

#include "time.h"

volatile uint16_t delay_ms = 0;

#ifdef TIMER_STATUS
void time_callback(TIMER_STATUS status, uintptr_t context)
#else
void time_callback(uintptr_t context)
#endif
{
    if(delay_ms > 0) delay_ms--;
}

void time_set_delay(uint16_t delay)
{
    delay_ms = delay;
}

bool time_is_delay_timeout(void)
{
    return (delay_ms == 0);
}

void time_delay_ms(uint16_t delay)
{
    delay_ms = delay;
    while(delay_ms !=0);
}
