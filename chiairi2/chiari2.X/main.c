/*
 * File:   main.c
 * Author: Chiari-note
 *
 * Created on 13 de junio de 2025, 23:48
 */


#include <xc.h>
#include <stdio.h>
#include <stdlib.h>


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

void init(){
    /** Interal oscillator default 8 MHZ**/
    OSCCONbits.IRCF = 7;
    
    /** Desactivo comparadores para usar los pines RA0:RA3*/
    CMCON=0x07;
    
    UCONbits.USBEN = 0;
    UCFGbits.UTRDIS = 1;
    
    /** Connfiguracion Timer 0*/
    T0CONbits.T08BIT = 0; //timer 0 a 16 bit
    T0CONbits.T0CS   = 0; //timer0 en modo interno}}
    T0CONbits.TMR0ON = 0; //timer0 empieza off
    T0CONbits.PSA    = 1; //no activo prescaler
    
    TMR0H = 0xF8;
    TMR0L = 0x2F; //f82f = 63535 = 65535 - 1000 -> a interrumpir cada 1000 microsegundos
    
    INTCON2bits.TMR0IP = 1;
    RCONbits.IPEN      = 0;
    INTCONbits.TMR0IE  = 1;
    
    /* Global interrupt enable */
    INTCONbits.GIE = 1; 
    T0CONbits.TMR0ON = 1; // arranco timer0
    
    T1CONbits.TMR1ON = 0;
    T1CONbits.T1RD16 = 0;
    T1CONbits.T1RUN = 0;
    T1CONbits.T1CKPS = 0;
    T1CONbits.T1OSCEN = 0;
    T1CONbits.TMR1CS = 0;
    T1CONbits.TMR1ON = 1;
    
    TMR1H = 0xF8;
    TMR1L = 0x2F;
    
    T2OUTPS0 = 0;
    T2OUTPS1 = 0;
    T2OUTPS2 = 0;
    T2OUTPS3 = 0;
    
    TMR2ON = 1;
    T2CKPS0 = 0;
    T2CKPS1 = 0;
    
    T2CONbits.TOUTPS=11; //postscale de 1:1 (0) a 1:16 (15) NO SE USA PARA PWM
    T2CONbits.T2CKPS=1; //prescaler 0:1 ; 1:4 ; 2o3: 16
    T2CONbits.TMR2ON=0;
    
    PR2=249;
    T2CONbits.TMR2ON=1;
    
    CCP1CONbits.CCP1M = 1100;
    CCP2CONbits.CCP2M = 1100;
    
    PR2 = 249; // 38 khz
    
}

void MotorASpeed(int S){
    if (S > 1000){
        S = 1000;
    }else if (S < -1000){
        S = -1000;
    }
    
    MA_1 = S > 0 ? 0 : 1;
    MA_2 = S < 0 ? 0 : 1;
    S = S > 0 ? S : (-S);
    
    CCP1CONbits.DC1B1 = S % 4;
    CCPR1L = S / 4;
}
void MotorBSpeed(int S){
    //S = -S; //reverse
    if (S > 1000){
        S = 1000;
    }else if (S < 1000){
        S = 0;
    }
    
    MB_1 = S > 0 ? 0 : 1;
    MB_2 = S < 0 ? 0 : 1;
    S = S > 0 ? S : (-S);
    
    CCP2CONbits.DC2B = S % 4;
    CCPR2L = S / 4;
}

void main(void) {
    return;
}
