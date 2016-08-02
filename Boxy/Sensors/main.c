/* 
 * File:   main.c
 * Author: newtonis
 *
 * Created on August 16, 2014, 11:51 AM
 */

#include <xc.h>

#pragma config BOREN = OFF, CPD = OFF, FOSC = INTOSCIO, MCLRE = OFF, WDTE = OFF, CP = OFF, LVP = OFF, PWRTE = OFF
#define _XTAL_FREQ 4000000

#define INICIO  0
#define PAUSA   1
#define LEER    2
#define APAGADO 3

#define OUTPUT 0
#define INPUT  1

#define IN_IR0 PORTAbits.RA0
#define IN_IR1 PORTAbits.RA1
#define IN_IR2 PORTAbits.RA2
#define IN_IR3 PORTAbits.RA3
#define IN_IR4 PORTAbits.RA4

#define OUT_IR0 PORTBbits.RB0
#define OUT_IR1 PORTBbits.RB4
#define OUT_IR2 PORTBbits.RB5
#define OUT_IR3 PORTBbits.RB6
#define OUT_IR4 PORTBbits.RB7

#define IN_DIS PORTAbits.RA0

#define CVALORES 5

#define CERCA 0x04
#define LEJOS 0x10

char estado;
char contador;
char ciclos;

char sensor[CVALORES];

char valores[CVALORES] = {1,2,6,8,12};
char actual;
int cnt = 0;

void init(void);
void configurar_pwm(void);
void configurar_IO(void);
void configurar_timer0(void);
void configurar_timer1(void);
void sensores(void);
void read();
void actualizar_salidas(void);
void DUTYSet(int value);

int main(int argc, char** argv) {

    init();
    configurar_IO();
    configurar_pwm();
    configurar_timer1();
    configurar_timer0();
    while (1){
        sensores();
    }
}


void init(void){
    CMCON = 0x07;
    contador = 0;
    estado = INICIO;
    ciclos = 0;
    actual = 0;
    CCPR1L = 0x03; //IN_DIS ? CERCA : LEJOS;
    CCPR1H = 0x00; // valores[actual]; //prender pwm

    ///// 0000
}
void configurar_pwm(void){
    T2CONbits.TMR2ON=1; // timer2 prendido
    T2CONbits.TOUTPS=0; // hasta 15
    T2CONbits.T2CKPS=0; // 00=1:1 01=1:4 1x=1:16
    TRISBbits.TRISB3=0; // pwm salida
    PR2=17;//26; // periodo 30Khz
    CCPR1L=0; //apagado
    CCP1CON=12;
}
void configurar_timer1(void){
    TMR1H=0xFC;
    TMR1L=0x18;

    PIE1bits.TMR1IE     = 0; //desabilita interrupcion
    PIR1bits.TMR1IF     = 0; //desborde

    T1CONbits.T1CKPS    = 0; //prescaler

    T1CONbits.nT1SYNC   = 1;
    T1CONbits.T1OSCEN   = 0;
    T1CONbits.TMR1CS    = 0;
    T1CONbits.TMR1ON    = 0; //on-off
    T1CONbits.TMR1ON    = 1; //prender timer
}
void configurar_timer0(void){
    OPTION_REGbits.T0CS = 0;
    OPTION_REGbits.PSA  = 0;
    OPTION_REGbits.PS   = 1;

    INTCONbits.T0IF     = 0;
    INTCONbits.T0IE     = 1;
    INTCONbits.GIE      = 1;
}
void configurar_IO(void){
    TRISB3 = OUTPUT;  //pwm
   
    TRISA0 = INPUT;
    TRISA1 = INPUT;
    TRISA2 = INPUT;
    TRISA3 = INPUT;
    TRISA4 = INPUT;
    
    TRISB0 = OUTPUT;
    TRISB4 = OUTPUT;
    TRISB5 = OUTPUT;
    TRISB6 = OUTPUT;
    TRISA7 = OUTPUT;
}
void interrupt t0_int(void){
    INTCONbits.T0IF=0;
    contador ++;
}
void sensores(){
    switch (estado){
        case INICIO:
            CCPR1L = 0x01; //IN_DIS ? CERCA : LEJOS;
            //CCPR1H = 0x00; // valores[actual]; //prender pwm
            T1CONbits.TMR1ON=1; //prender timer
            estado = PAUSA;
            cnt = 0;
            contador = 0;
        break;
        case PAUSA:
            //cnt ++;
            //if (contador >= 2){
            if(PIR1bits.TMR1IF==1){  //desborde
                PIR1bits.TMR1IF=0; //borro desborde
                T1CONbits.TMR1ON=0; //apagar timer
                TMR1H=0xFC;
                TMR1L=0x17;
                estado = LEER;
            }
        break;
        case LEER:
            read();
            PIR1bits.TMR1IF=0; //borro desborde
            T1CONbits.TMR1ON=0; //apagar timer
            contador = 0;
            CCPR1L=0; //apagado pwm
            estado = APAGADO;
            cnt = 0;
        break;
        case APAGADO:
            if(contador >= 5){
                estado = INICIO;
            }
        break;
    }
}
void read(){
    OUT_IR0 = IN_IR0;
    OUT_IR1 = IN_IR1;
    OUT_IR2 = IN_IR2;
    OUT_IR3 = IN_IR3;
    OUT_IR4 = IN_IR4;
}
void DUTYSet(int value){
    CCPR1L = value / 4;
    CCP1CON = value % 4;
}

