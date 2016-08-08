#ifndef CONFIG_H
#define CONFIG_H

#include <xc.h>

/*** config ***/
#pragma config VREGEN = OFF	        // Voltage regulat USB , is  Suspended
#pragma config WDT    = OFF	        // Watchdog timer is suspended
#pragma config PLLDIV = 5               // Internal Oscillator engaged
#pragma config MCLRE  = OFF
#pragma config WDTPS  = 32768
#pragma config CCP2MX = ON
#pragma config PBADEN = OFF
#pragma config CPUDIV = OSC1_PLL2
#pragma config USBDIV = 2
#pragma config FOSC   = INTOSCIO_EC
#pragma config FCMEN  = OFF
#pragma config IESO   = OFF
#pragma config PWRT   = OFF
#pragma config BOR    = OFF
#pragma config BORV   = 3
#pragma config LPT1OSC= OFF
#pragma config STVREN = ON
#pragma config LVP    = OFF
#pragma config ICPRT  = OFF
#pragma config XINST  = OFF
#pragma config DEBUG  = OFF
#pragma config CP0    = OFF, CP1 = OFF, CP2 = OFF, CP3 = OFF
#pragma config CPB    = OFF 	// CPB off
#pragma config CPD    = OFF
#pragma config WRT0   = OFF, WRT1 = OFF, WRT2 = OFF, WRT3 = OFF
#pragma config WRTC   = OFF
#pragma config WRTB   = OFF
#pragma config WRTD   = OFF
#pragma config EBTR0  = OFF, EBTR1 = OFF, EBTR2 = OFF, EBTR3 = OFF
#pragma config EBTRB  = OFF

enum {OUTPUT,INPUT};

#define min(a,b) (a<b?a:b)
#define max(a,b) (a>b?a:b)
#define ran(a,b,c) (max(min(a,c),b))
#define or ||
#define and &&
#define not !

#define ADIR PORTDbits.RD0
#define BDIR PORTCbits.RC0

#define L_RED PORTDbits.RD2
#define L_YELLOW PORTDbits.RD3
#define L_ORANGE PORTDbits.RD4

#define B_ORANGE PORTBbits.RB0
#define B_YELLOW PORTBbits.RB1
#define B_RED PORTBbits.RB2

//#define IR2 PORTDbits.RD5
//#define IR0 PORTBbits.RB5

#define IR_DER PORTDbits.RD7
#define IR_CEN PORTBbits.RB5
#define IR_IZQ PORTDbits.RD5

#define IR0 PORTBbits.RB5
#define IR1 PORTDbits.RD7
#define IR2 PORTDbits.RD5
#define IR4 PORTBbits.RB3

typedef long long ll;

extern ll TIME;

void MotorsPWM();
void InitTIMERS();
void MotorASpeed(int S);
void MotorBSpeed(int S);
void MotorsSpeed(int A,int B);
void configurations_init();

#endif
