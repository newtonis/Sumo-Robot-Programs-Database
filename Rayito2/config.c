#include <xc.h>
#include <stdio.h>
#include <stdlib.h>

#include "config.h"

unsigned int V[16];

void Wixel(void){
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
}
void putch(char data){
    while( ! TXIF)
    continue;
    TXREG = data;
}

void configurations_init(){
    OSCCONbits.IRCF = 7;    /* OSCILLATOR CONTROL REGISTER -> 8MHz */
    // Set all pins as digital I/O
    
    CMCON=0x07;             // Set all comparators as digital I/O

   //disable usb
    UCONbits.USBEN = 0;
    UCFGbits.UTRDIS = 1;
}

void InitTIMERS(){
    T0CONbits.TMR0ON = 0; //timer0 OFF
    T0CONbits.T08BIT = 0; //timer 0 a 16 bit
    T0CONbits.T0CS   = 0; //timer0 en modo interno
    
    T0CONbits.PSA    = 1; //no activo prescaler
    TMR0H = 0xF8;
    TMR0L = 0x2F; //f82f = 63535 = 65535 - 1000 -> a interrumpir cada 1000 microsegundos
    
  
    INTCON2bits.TMR0IP = 1; //ALTA PRIORIDAD
    RCONbits.IPEN      = 0; //que no haya prioridades
    INTCONbits.TMR0IE  = 1; //habilitar interrupcion timer 0
    //INTCONbits.RBIF = 0;
    
   // INTCONbits.PEIE_GIEL = 1; //habilitar interrupciones de perifericos
    INTCONbits.GIE = 1; //GLOBAL INTERRUPT ENABLE
    
    T0CONbits.TMR0ON = 1; //activo timer -0
    
    T1CONbits.TMR1ON = 0;
    T1CONbits.T1RD16 = 0;
    T1CONbits.T1RUN = 0;
    T1CONbits.T1CKPS = 0;
    T1CONbits.T1OSCEN = 0;
    T1CONbits.TMR1CS = 0;
    T1CONbits.TMR1ON = 1;

    TMR1H = 0xF8;
    TMR1L = 0x2F;
   
    
    //TRISBbits.TRISB1 = OUTPUT;
    //TRISBbits.TRISB3 = OUTPUT;
    //TRISBbits.TRISB5 = OUTPUT;
    
    /// LEDS
    TRISBbits.TRISB5 = OUTPUT;
    
    TRISAbits.TRISA4 = OUTPUT;
    TRISBbits.TRISB0 = OUTPUT;
    
    TRISDbits.TRISD4 = INPUT;
    TRISDbits.TRISD5 = INPUT;
    TRISDbits.TRISD6 = INPUT;
    
     
    TRISDbits.TRISD1 = OUTPUT;
    TRISDbits.TRISD2 = OUTPUT;
    TRISDbits.TRISD0 = INPUT; //SHORTCUT
    TRISDbits.TRISD3 = OUTPUT;
    
    
    TRISCbits.TRISC1 = OUTPUT;
    TRISCbits.TRISC2 = OUTPUT;
    
    /*** SENSOR ***/
    TRISAbits.TRISA0 = INPUT;
    TRISAbits.TRISA1 = INPUT;
    TRISAbits.TRISA2 = INPUT;
    TRISAbits.TRISA3 = INPUT;
    TRISAbits.TRISA5 = INPUT;
    
    TRISEbits.TRISE0 = INPUT;
    TRISEbits.TRISE1 = INPUT;
    TRISEbits.TRISE2 = INPUT;
    TRISBbits.TRISB2 = INPUT;
    
    TRISBbits.TRISB1 = INPUT;
    //TRISBbits.TRISB0 = INPUT;
    
    
    
    TRISCbits.TRISC6 = OUTPUT;
    TRISCbits.TRISC7 = INPUT;
    
    PORTEbits.RDPU = 1;
}

void InitAnalog(){
    ADCON1bits.VCFG1 = 0;
    ADCON1bits.VCFG0 = 0;
    
    ADCON1bits.PCFG3 = 0;
    ADCON1bits.PCFG2 = 1;
    ADCON1bits.PCFG1 = 0;
    ADCON1bits.PCFG0 = 0;
    
    //ADCON2 = 10011101;

    ADCON2bits.ADFM=0;
    ADCON2bits.ACQT=7; //20tads
    ADCON2bits.ADCS=6; //fosc/64
    ADCON0bits.CHS=0;
    ADCON0bits.GODONE=0;
    ADCON0bits.ADON=1;
}

void MotorsPWM(){
    /** TIMER 2 (PWM timer) **/
    T2OUTPS0 = 0;
    T2OUTPS1 = 0;
    T2OUTPS2 = 0;
    T2OUTPS3 = 0;
    
    TMR2ON = 1;
    T2CKPS0 = 0;
    T2CKPS1 = 0;
    
    TMR2ON = 1;
    
    
    T2CONbits.TOUTPS=11; //postscale de 1:1 (0) a 1:16 (15) NO SE USA PARA PWM
    T2CONbits.T2CKPS=1; //prescaler 0:1 ; 1:4 ; 2o3: 16
    T2CONbits.TMR2ON=0;
    PR2=249;
    T2CONbits.TMR2ON=1; //Arranco el timer


    CCP1CONbits.CCP1M = 1100;
    CCP2CONbits.CCP2M = 1100;
    PR2 = 249; //51;//51; //38 khz
    
}
void MotorASpeed(int S){
    S = -S; //reverse
    S = min(S,1000);
    S = max(S,-1000);
    
    ADIR = S > 0 ? 0 : 1;
    S = S > 0 ? S : 1000 + S; 
    
    CCP1CONbits.DC1B1 = S % 4;
    CCPR1L = S / 4;
}
void MotorBSpeed(int S){
    S = -S; //reverse
    S = min(S,1000);
    S = max(S,-1000);
    
    BDIR = S > 0 ? 0 : 1;
    S = S > 0 ? S : 1000 + S;
    
    CCP2CONbits.DC2B = S % 4;
    CCPR2L = S / 4;
}

void MotorsSpeed(int A,int B){
    MotorASpeed(MODE == ALFA ? A : B);
    MotorBSpeed(MODE == BETA ? A : B);
}

void EnhancedRead(){
    unsigned char i;
    unsigned int aux;
    for (i=0;i<11;i++){
        ADCON0bits.CHS=i;
        ADCON0bits.GODONE=1;
        while (ADCON0bits.GODONE==1) {}
            aux=ADRESH*4;
            aux=aux+ADRESL/64;
            V[i]=aux;
        }
}   
void WriteMem(uc addr,uc data){ ///Write into memory address burocracy
    EEADR = addr;
    EEDATA = data;
    EECON1bits.EEPGD = 0;
    EECON1bits.CFGS = 0;
    EECON1bits.WREN = 1;
    INTCONbits.GIE = 0;
    EECON2 = 0x55;
    EECON2 = 0xAA;
    EECON1bits.WR = 1;
    INTCONbits.GIE = 1;
    while (EECON1bits.WR == 1){}
    EECON1bits.WREN = 0;
}
void ReadMem(uc addr,uc *data){ ///Reading memory address burocracy
    EEADR = addr;
    EECON1bits.EEPGD = 0;
    EECON1bits.CFGS = 0;
    EECON1bits.RD = 1;
    while (EECON1bits.RD == 1){}
    *data = EEDATA;
}
