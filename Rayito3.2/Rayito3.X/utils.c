#include <xc.h>
#include "io.h"
#include "utils.h"

void setA(){
    LED_A = 1;
    LED_B = 0;
    LED_C = 0;
    LED_D = 0;
}

void setB(){
    LED_A = 0;
    LED_B = 1;
    LED_C = 0;
    LED_D = 0;
}
void setC(){
    LED_A = 0;
    LED_B = 0;
    LED_C = 1;
    LED_D = 0;
}
void setD(){
    LED_A = 0;
    LED_B = 0;
    LED_C = 0;
    LED_D = 1;
}