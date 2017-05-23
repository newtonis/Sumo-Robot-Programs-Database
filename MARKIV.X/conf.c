#include "conf.h"

void configurations_init(){
    OSCCONbits.IRCF = 7;    /* OSCILLATOR CONTROL REGISTER -> 8MHz */
    // Set all pins as digital I/O
    
    CMCON=0x07;             // Set all comparators as digital I/O

    //disable usb
    UCONbits.USBEN = 0;
    UCFGbits.UTRDIS = 1;
}
