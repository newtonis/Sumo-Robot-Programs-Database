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
#pragma config CPUDIV = OSC1_PLL2 /// Divide 96 MHz PLL frequency by 2 = 48Mhz
#pragma config USBDIV = 2
#pragma config FOSC   = HSPLL_HS // HS oscillator, PLL enabled, HS used by USB. PLL Frequency: 96 MHz
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

// Input Output
#define LED_1 PORTBbits.RB0
#define LED_2 PORTBbits.RB1
#define LED_3 PORTBbits.RB2
#define LED_4 PORTBbits.RB4
#define LED_5 PORTBbits.RB5

// Buttons
#define BUTTON_1 PORTDbits.RD2
#define BUTTON_2 PORTDbits.RD3

// 5 available general propouse counters
long long int counter[5]; 
// 7 analog inputs
int an_input[10]; 

void config_micro(){
    // Interal oscillator default 8 MHZ
    OSCCONbits.IRCF = 7;
    
    // Desactivo comparadores para poder usar los pines RA0:RA3
    CMCON=0x07;
    
    // Disable USB
    UCONbits.USBEN = 0;
    UCFGbits.UTRDIS = 1;
    
    // Connfiguracion Timer 0
    T0CONbits.TMR0ON = 0; //timer0 empieza off
    T0CONbits.T08BIT = 0; //timer 0 a 16 bit
    T0CONbits.T0CS   = 0; //timer0 en modo interno
    T0CONbits.PSA    = 0; // activo prescaler
    T0CONbits.T0PS = 0b101; // prescaler 1:64 para el timer0
    
    
    INTCON2bits.TMR0IP = 1; // Timer0 interrupt level
    INTCONbits.TMR0IE  = 1; // Timer0 interrupt enable
    RCONbits.IPEN      = 0; // Disable priority levels on interrupts
    
    // Timer 0 start value
    TMR0H = 0xF8;
    TMR0L = 0xAC; //f8ac = 63660 = 65535 - 1875 -> timer0 a interrumpir cada 1875 * 64 = 12000 ciclos
    // clock interrupt period = 1 / (48 / 4) ) * 120000 = 10000 us = 10 ms = 1 segundo / 100
    // en 1 segundo => 100 interrupciones

    // Configuracion Timer 1
    T1CONbits.TMR1ON = 0;
    T1CONbits.T1RD16 = 0;
    T1CONbits.T1RUN = 0;
    T1CONbits.T1CKPS = 0;
    T1CONbits.T1OSCEN = 0;
    T1CONbits.TMR1CS = 0;
    
    // Global interrupt enable
    INTCONbits.GIE = 1; 
    T0CONbits.TMR0ON = 1; // arranco timer0
    T1CONbits.TMR1ON = 1; // arranco timer1
    
    TMR1H = 0xF8;
    TMR1L = 0x2F; // timer1 interrumpir cada 2000 ciclos
    
    // PWM config (With Timer 2)
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
    
    PR2=249; // 38 KHZ
    T2CONbits.TMR2ON=1;
    
    CCP1CONbits.CCP1M = 0b1100;
    CCP2CONbits.CCP2M = 0b1100;
    
    // Analog inputs
    ADCON0bits.CHS=0; // Analog channel 0
    ADCON0bits.GODONE=0; // A/D iddle start status
    ADCON0bits.ADON=1; // Disable A/D Module
    
    ADCON1bits.VCFG = 0;  // Vss fror voltage reference
    ADCON1bits.PCFG = 0b1001; // Use AN0, AN1, AN2, AN3, AN4, AN5
    
    ADCON2bits.ADFM=0; // Result Left justified
    ADCON2bits.ACQT=7; // Acquisition time 20tads
    ADCON2bits.ADCS=6; // fosc/64 Conversion clock: 48 Mhz / 64
    
    // Wixel (for debug)
    
    // Start tris value for wixel ports
    TRISCbits.RC6 = 1;
    TRISCbits.RC7 = 1;
    
    BAUDCONbits.RXDTP=0; //Asynchronous mode: 1 = RX data is inverted 0 = RX data received is not inverted
    BAUDCONbits.TXCKP=0; //XCKP: Clock and Data Polarity Select bit Asynchronous mode: 1 = TX data is inverted 0 = TX
    BAUDCONbits.BRG16=1; //BRG16: 16-Bit Baud Rate Register Enable bit 1 = 16-bit Baud Rate Generator ? SPBRGH and
    //SPBRG 0 = 8-bit Baud Rate Generator ? SPBRG only (Compatible mode), SPBRGH value ignored
    BAUDCONbits.WUE=0; //WUE: Wake-up Enable bit
    BAUDCONbits.ABDEN=0; //Auto-Baud Detect Enable bit
    SPBRG=51; // a 48MHZ da 57600 bps
    SPBRGH=0;
    TXSTAbits.CSRC=0;
    TXSTAbits.TX9=0; //1 = Selects 9-bit transmission 0 = Selects 8-bit transmission
    TXSTAbits.TXEN=1; //1 = Transmit enabled 0 = Transmit disabled
    TXSTAbits.SYNC=0; //1 = Synchronous mode 0 = Asynchronous modeSync Break on next transmission (cleared by hardware upon completion) 0 = Sync
    //Break transmission completed
    TXSTAbits.BRGH=0; //1 = High speed 0 = Low speed
    RCSTAbits.RX9=0;
    RCSTAbits.CREN=1; // CREN: Continuous Receive Enable bit Asynchronous mode: 1 = Enables receiver 0 = Disables
    RCSTAbits.SPEN=1; //1 = Serial port enabled (configures RX/DT and TX/CK pins as serial port pins) 0 = Serial port
    //disabled (held in Reset)
    
    // Input Output
    
    // Leds
    TRISBbits.RB0 = 0;
    TRISBbits.RB1 = 0;
    TRISBbits.RB2 = 0;
    TRISBbits.RB4 = 0;
    TRISBbits.RB5 = 0;
    
    // Buttons
    TRISDbits.RD2 = 1;
    TRISDbits.RD3 = 1;
    
    // Analog inputs
    TRISAbits.RA0 = 1;
    TRISAbits.RA1 = 1;
    TRISAbits.RA2 = 1;
    TRISAbits.RA3 = 1;
    TRISAbits.RA4 = 1;
    TRISEbits.RE0 = 1;
}

// Analog read
void read_analog(){
    unsigned int aux;
    unsigned char i;
    for (i=0;i<=5;i++){
        ADCON0bits.CHS=i;
        ADCON0bits.GODONE=1;
        while (ADCON0bits.GODONE==1) {}
        aux=ADRESH*4;
        aux=aux+ADRESL/64;
        an_input[i]=aux;
    }
}

// Wixel putch function (for debug) 
void putch(char data){
    while( ! TXIF)
    continue;
    TXREG = data;
}

void __interrupt() enc(void){
    if (TMR0IF){ // Timer 0 Overflow
        // counters unity = 10 ms
        TMR0H = 0xF8;
        TMR0L = 0xAC;
        TMR0IF = 0;
        
        int i;
        for (i=0;i<5;i++){
            counter[i] ++; // increment all counters
        }
    }
}

void init_vars(){
    int i;
    for (i=0;i<5;i++){   
        counter[i] = 0; // init all counters
    }
}
/*
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
}*/
/** Start test analog input program */


/** Test timer0 increment and led outputs **/

int value;
int selected;
char flag_b1;
char flag_b2;

void init(){
    value = 0;
    selected = 0;
    flag_b1 = 0;
    flag_b2 = 0;
}

void loop(){
    if (counter[0] >= 50){ // every 500 miliseconds (50 time unities, time unity=10ms)
        counter[0] = 0;
        value ++;
        if (value >= 32){ // reset value every 32 increments to avoid overflow
            value = 0;
        }
        printf("Analog value %d: %d \n", selected, an_input[selected]);
    }

    LED_1 = an_input[selected] >= 512 ? 1 : 0;
    LED_2 = an_input[selected] >= 512 ? 1 : 0;
    LED_3 = an_input[selected] >= 512 ? 1 : 0;
    LED_4 = an_input[selected] >= 512 ? 1 : 0;
    LED_5 = an_input[selected] >= 512 ? 1 : 0;

    if (!BUTTON_1 && flag_b1 == 0){
        printf("Button 1 click detected\n");

        selected ++;
        if (selected >= 6){
            selected = 0;
        }
        printf("Selected analog: %d\n", selected);
        flag_b1 = 1;
    }else if(BUTTON_1){
        flag_b1 = 0;
    }

}

/* End program */




void main(void) {
    init_vars();
    config_micro();
    
    init();
    while (1){
        read_analog();

        loop();
    }
    
}
