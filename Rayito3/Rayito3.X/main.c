/*
 * File:   main.c
 * Author: newtonis
 *
 * Created on February 7, 2017, 12:16 AM
 */


#include <xc.h>

#include "config.h"
#include "io.h"
#include "utils.h"
#include "timer.h"

void main(void) {
    init_tms();
     
    while (1){
       /* if (time[0] < 500) setA();
        if (time[0] > 500 and time[0] < 1000) setB();
        if (time[0] > 1000 and time[0] < 1500) setC();
        if (time[0] > 1500 and time[0] < 200) setD();
        if (time[0] > 2000) time[0] = 0;*/
        
        if (BUTTON_A == 0){
            LED_A = 1;
            LED_B = 1;
        }else{
            LED_A = 0;
            LED_B = 0;
        }
        if (BUTTON_B == 0){
            LED_C = 1;
            LED_D = 1;
        }else{
            LED_C = 0;
            LED_D = 0;
        }
    }
    
}
