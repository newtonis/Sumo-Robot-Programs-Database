/* 
 * File:   main.c
 * Author: newtonis
 *
 * Created on August 16, 2014, 11:51 AM
 */

 //http://www.92gag.com/top-rated/easy-make-i-love-you-895

#include <xc.h>

#pragma config BOREN = OFF, CPD = OFF, FOSC = INTOSCIO, MCLRE = OFF, WDTE = OFF, CP = OFF, LVP = OFF, PWRTE = OFF
#define _XTAL_FREQ 4000000

#define INICIO  0
#define PAUSA   1
#define LEER    2
#define APAGADO 3

#define OUTPUT 0
#define INPUT  1

#define or ||
#define and &&
#define not !

#define IN_IR0 PORTBbits.RB2
#define IN_IR1 PORTBbits.RB1
#define IN_IR2 PORTBbits.RB0
#define IN_IR3 PORTAbits.RA4
#define IN_IR4 PORTAbits.RA3
#define IN_IR5 PORTAbits.RA2
#define IN_IR6 PORTAbits.RA1

#define OUT_PCLK PORTBbits.RB4
#define OUT_IR0 PORTBbits.RB5
#define OUT_IR1 PORTAbits.RA6
#define OUT_IR2 PORTAbits.RA7
#define OUT_IR3 PORTAbits.RA0

//#define IN_DIS PORTAbits.RA0

#define CVALORES 8

#define CERCA 0x04
#define LEJOS 0x10

long long times;
char estado;
char contador;
char ciclos;
int t = 0;

char sensor[CVALORES];
char V[CVALORES];


char valores[CVALORES] = {1,2,6,8,12};
char actual;
char st;

void init(void);
void configurar_pwm(void);
void configurar_IO(void);
void configurar_timer0(void);
void configurar_timer1(void);
void sensores(void);
void read();
void actualizar_salidas(void);
void DUTYSet(int value);
void store(){
    int i;
    V[0] = V[0] or (not IN_IR0);
    V[1] = V[1] or (not IN_IR1);
    V[2] = V[2] or (not IN_IR2);
    V[3] = V[3] or (not IN_IR3);
    V[4] = V[4] or (not IN_IR4);
    V[5] = V[5] or (not IN_IR5);
    V[6] = V[6] or (not IN_IR6);
    st = 0;// flag set to update
}
void set(){
    if (st == 0){
        if (t == 0){
            OUT_PCLK = 0;
            OUT_IR0 = V[0];
            OUT_IR1 = V[1];
            OUT_IR2 = V[2];
            OUT_IR3 = V[3]; 
            t = 1;
        }else{
            OUT_PCLK = 1;
            OUT_IR0 = V[0];
            OUT_IR1 = V[1];
            OUT_IR2 = V[2];
            OUT_IR3 = V[3];
            t = 0;
        }
        int j;
        for (j = 0;j < CVALORES;j++) V[j] = 0;
        st = 1;
    }
}
int main(int argc, char** argv) {
    st = 1;
    times = 0;
    init();
    configurar_IO();
    configurar_pwm();
    set();
    /*configurar_timer1();
    configurar_timer0();*/
    TMR2IE=1;
    PEIE=1;
    GIE=1;
    while (1){
        if (times > 540 && times < 560){
            store();
        }else{
            set();
        }
    }
}

void interrupt ISR(){
    if(TMR2IE && TMR2IF){
        //TMR2 overflow
        times++;
        if(times == 504){
            TRISB3 = 0;
        }
        if(times == 560){
            TRISB3 = 1;
            times = 0;
        }
        TMR2IF= 0;
    }
}
void init(void){
    CMCON = 0x07;
    contador = 0;
    estado = INICIO;
    ciclos = 0;
    actual = 0;
    
    ///// 0000
}
void SetDuty(int S){
    // v goes from 0 to 100
    //now goes from 0 to 78 
    CCP1CONbits.CCP1X = (S % 4) > 1;
    CCP1CONbits.CCP1Y = (S % 4) % 2;
    CCPR1L = S / 4;
}
void configurar_pwm(void){
    T2CONbits.TMR2ON=1; // timer2 prendido
    T2CONbits.TOUTPS=0; // hasta 15
    T2CONbits.T2CKPS=0; // 00=1:1 01=1:4 1x=1:16

    TRISBbits.TRISB3=0; // pwm salida
    PR2=26;//17;//26; // periodo 30Khz

    // MENOR VALOR A MAYOR VALOR
    // 78 -> 100 %
    /// 72 is the max cycle to send
    //SetDuty(7);
    CCP1CON = 12; // 12
   // CCPR1L = 0x02;
    //CCPR1L=0; //apagado
    //CCP1CON=12;
    SetDuty(15);
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
   
    TRISB2 = INPUT;
    TRISB1 = INPUT;
    TRISB0 = INPUT;
    TRISA4 = INPUT;
    TRISA3 = INPUT;
    TRISA2 = INPUT;
    TRISA1 = INPUT;

    TRISB4 = OUTPUT;
    TRISB5 = OUTPUT;
    TRISA6 = OUTPUT;
    TRISA7 = OUTPUT;
    TRISA0 = OUTPUT;
}
/*void interrupt t0_int(void){
    INTCONbits.T0IF=0;
    contador ++;
}*/
/*void interrupt t2_int(void){
    if (PIR1bits.TMR2IF){
        PIR1bits.TMR2IF=0;
        times ++;
    }
}*/
void OnTIMER2(){
    T2CONbits.TMR2ON=1; // timer2 prendido
    T2CONbits.TOUTPS=0; // hasta 15
    T2CONbits.T2CKPS=0; // 00=1:1 01=1:4 1x=1:16
    TRISBbits.TRISB3=0; // pwm salida
}
void sensores(){
    switch (estado){
        case INICIO:
            //CCPR1L = 0x01; //IN_DIS ? CERCA : LEJOS;
            //CCPR1L= valores[actual]; //prender pwm
            //OnTIMER2();
            TRISB3 = OUTPUT;
            estado = PAUSA;
            times = 0;
        break;
        case PAUSA:
            if(times > 100){  //desborde timer 2
                //PIR1bits.TMR1IF=0; //borro desborde
                //T1CONbits.TMR1ON=0; //apagar timer
                //TMR1H=0xFC;
                //TMR1L=0x17;
                read();
                TRISB3 = INPUT;
                //CCPR1L=0; //apagado pwm
                estado = APAGADO;
                times = 0;
            }
        break;
        case APAGADO:
            if(times > 100){  //desborde timer 2
                estado = INICIO;
            }
        break;
    }
}
void read(){
    /*OUT_IR0 = not IN_IR0;
    OUT_IR1 = not IN_IR1;
    OUT_IR2 = not IN_IR2;
    OUT_IR3 = not IN_IR3;
    OUT_IR4 = not IN_IR4;*/
}
void DUTYSet(int value){
    CCPR1L = value / 4;
    CCP1CON = value % 4;
}

