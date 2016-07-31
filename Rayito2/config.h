#ifndef CONFIG_H
#define CONFIG_H

#include <xc.h>
#include <stdio.h>
#include <stdlib.h>

/*** types defines to make them easier and faster to type **/
typedef unsigned int ui;  
typedef unsigned char uc;
typedef long long ull;
typedef long long ll;
typedef long long pp;

/*** CONFIGURATIONS OF THE MICROCHIP BASIC BITS ***/

#pragma config VREGEN = OFF	        // Voltage regulat USB , is  Suspended
#pragma config WDT    = OFF	        // Watchdog timer is suspended
#pragma config PLLDIV = 5               // Internal Oscillator engaged
#pragma config MCLRE  = OFF
#pragma config WDTPS  = 32768
#pragma config CCP2MX = ON
#pragma config PBADEN = OFF
#pragma config CPUDIV = OSC1_PLL2
#pragma config USBDIV = 2
#pragma config FOSC   = HSPLL_HS
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

#define SPECIAL 1 ///We will program the fall down area

enum {ALFA,BETA};

#define MODE ALFA ///Just in the case the motors are inverted (ALPHA=normal,BETA=inverted)

/*** SETTING STANDARD I/O NAMES FOR EACH PORT ***/
#define L_ROJO PORTBbits.RB5
#define L_AMARILLO PORTAbits.RA4
#define L_VERDE PORTBbits.RB0

#define B_VERDE PORTDbits.RD4
#define B_AMARILLO PORTDbits.RD5
#define B_ROJO PORTDbits.RD6

#define ADIR PORTDbits.RD1
#define BDIR PORTDbits.RD2

#define ENABLEA PORTDbits.RD3
#define ENABLEB PORTDbits.RD0

enum {OUTPUT,INPUT};

extern unsigned int V[16];
void Wixel(void);
void configurations_init();
void InitTIMERS();
void InitAnalog();
void MotorsPWM();
void MotorASpeed(int S);
void MotorBSpeed(int S);
void MotorsSpeed(int A,int B);
void EnhancedRead();

#endif
