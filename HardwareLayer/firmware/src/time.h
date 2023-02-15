/* ************************************************************************** */
/** Descriptive File Name

  @Company
    Company Name

  @File Name
    filename.h

  @Summary
    Brief description of the file.

  @Description
    Describe the purpose of this file.
 */
/* ************************************************************************** */

#ifndef _EXAMPLE_FILE_NAME_H    /* Guard against multiple inclusion */
#define _EXAMPLE_FILE_NAME_H

#include "hardware_layer.h"

#ifdef TIMER_STATUS
void time_callback(TIMER_STATUS status, uintptr_t context);
#else
void time_callback(uintptr_t context);
#endif /* TIMER_STATUS */

void time_delay_ms(uint16_t delay);
void time_set_delay(uint16_t delay);
bool time_is_delay_timeout(void);

#ifndef SYSTEM_DelayMs 
#define SYSTEM_DelayMs      time_delay_ms
#endif  /* SYSTEM_DelayMs */

#endif /* _EXAMPLE_FILE_NAME_H */

/* *****************************************************************************
 End of File
 */
