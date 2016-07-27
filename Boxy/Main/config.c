#include "config.h"

ll TIME;

void interrupt enc(void){
    if (TMR0IF){
       TIME ++;
       TMR0H = 0xF8;//E8;
       TMR0L = 0x2F;//90;//90;
       
       
       TMR0IF = 0;
    }
    if (TMR1IF){
        TMR1H = 0xF8;
        TMR1L = 0x2F;
        
        //if (MS%10==0){
        //    LineUpdate();
        //}

        TMR1IF = 0;
    }
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
    
    INTCON2bits.RBPU = 0;
            
    TIME = 0;
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
	T2CONbits.TMR2ON=1;	//Arranco el timer


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
    MotorASpeed(A);
    MotorBSpeed(B);
}