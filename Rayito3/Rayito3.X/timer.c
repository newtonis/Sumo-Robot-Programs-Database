#include <xc.h>
#include "timer.h"

int i;
int time[10];

void interrupt enc(void){
    if (TMR0IF){
       for (i = 0;i < 10;i++) time[i]++;
       TMR0H = 0xF8;//E8;
       TMR0L = 0x2F;//90;//90;
       TMR0IF = 0;
    }
}