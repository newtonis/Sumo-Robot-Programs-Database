#include <pic18f4550.h>

#include "io.h"

enum {OUTPUT ,INPUT};

void init_io(){
    /*** init leds ***/
    TRISBbits.RB4 = OUTPUT;
    TRISCbits.RC1 = OUTPUT;
    TRISDbits.RD2 = OUTPUT;
    TRISAbits.RA4 = OUTPUT;
    
    /*** init motor direction pins ***/
    TRISBbits.RB0 = OUTPUT;
    TRISBbits.RB1 = OUTPUT;
    
    /*** init button pins ***/
    TRISDbits.RD0 = INPUT;
    TRISDbits.RD1 = INPUT;
    
    /*** Current sensing pins ***/
    TRISAbits.RA0 = INPUT;
    TRISAbits.RA1 = INPUT;
    
    /*** sensing pins ***/
    TRISAbits.RA2 = INPUT;
    TRISAbits.RA3 = INPUT;
    TRISAbits.RA5 = INPUT;
    TRISEbits.RE0 = INPUT;
    TRISEbits.RE1 = INPUT;
    TRISEbits.RE2 = INPUT;
    TRISBbits.RB2 = INPUT;
    
    /*** pwm pins ***/
    TRISCbits.RC2 = OUTPUT;
    TRISBbits.RB3 = OUTPUT;
}
