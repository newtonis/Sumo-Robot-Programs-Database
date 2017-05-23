#include "ybot.h"

typedef long long pp;

enum {OUTPUT,INPUT};
enum {WAIT_PRESS , WAIT_CALL , WAIT_RELEASE };

struct CLOCKst CLOCK;

char ST_B_VERDE , ST_B_AMARILLO , ST_B_ROJO;
int V[2];
int IR[5];

char PisoActual;
char VistActual;
unsigned char low,high;
ull TIME;

pp value;

ui mCiclo; //momento del ciclo
uc iStatus; //infrared status


uc status;
uc fStatus; //flag new status

long long MS; 

/*** CARACTERISTICAS ENCODER POLOLU
 * 
 * CAMBIA DE ESTADO 15 VECES POR GIRO
 * LA CIRCUNFERENCIA DE LA RUEDA ES DE 100,48 mm=10cm
 * POR GIRO SE AVANZA 6.6 mm
 
 * Entonces calculando, si avanzo 15 veces por segundo, estoy llendo a 1rps
 * por lo tanto la velocidad entre ticks de encoder tiene que ser de 1/15s = 0.06s
 * 
 * 66666
 
 */
long long millis(){
    low = (unsigned char)TMR0L;
    high = (unsigned char)TMR0H;
    return (( (high<<8 | low) )-0xF82F) + ((MS) * 1000);
    
    //return value;//(((high<<8 | low))-64536)/100 + MS*10 ;
}
void initYBOT(){
    MS = 0;
    configurations_init();
    InitAnalog();
    InitTIMERS(); 
    InitButtons();
    InitSP();
    MotorsPWM();
}
void UpdateYBOT(){
    
    UpdateButtons();
    UpdatePiso();
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

    //INTCONbits.PEIE_GIEL = 1; //habilitar interrupciones de perifericos
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
    
    TRISAbits.TRISA6 = OUTPUT; 
    TRISEbits.TRISE1 = OUTPUT; //led amarillo
    TRISAbits.TRISA4 = OUTPUT; //led verde
    
    //RC4 es INPUT (boton verde) siempre sin configurar

    TRISAbits.RA0 = INPUT;
    TRISAbits.RA1 = INPUT;
    
    TRISDbits.TRISD2 = INPUT; //boton amarillo
    TRISDbits.TRISD3 = INPUT; //boton verde
    
    
    TRISCbits.TRISC0 = OUTPUT; //Motor A direction 
    TRISDbits.TRISD0 = OUTPUT; //Motor B direction
    
    TRISCbits.RC1 = OUTPUT; //PWM output MOTOR A
    TRISCbits.RC2 = OUTPUT; //PWM output MOTOR B
    
    TRISDbits.TRISD1 = OUTPUT;
    TRISBbits.TRISB0 = OUTPUT;
    
    TRISBbits.TRISB5 = INPUT;
    TRISBbits.TRISB4 = INPUT;
    TRISBbits.TRISB3 = INPUT;
    TRISBbits.TRISB2 = INPUT;
    TRISBbits.TRISB1 = INPUT;
    
    
    //INTCONbits.INT0E = 1; //interrupt 0 enabled
    //INTCON2bits.INTEDG0 = 0; //falling edge
    //INTCONbits.INT0F = 0; //RESET interrupt flag
    
    //INTCON3bits.INT1IP = 1; //high priority
    //INTCON3bits.INT1E = 1; //ENABLE interrupt 1
    //RINTCON3bits.INT1F = 0; //RESET interrupt flag

}


void ResetCounter(){
    CLOCK.miliseconds = 0;
    CLOCK.seconds = 0;
    CLOCK.minutes = 0;
    TIME = 0;
}
void interrupt enc(void){
    if (TMR0IF){
         //f82f = 63535 = 65535 - 1000 -> a interrumpir cada 1000 microsegundos
        TMR0H = 0xF8;
        TMR0L = 0x2F;
        //TMR0IF = 0;
        CLOCK.miliseconds ++;
        if (CLOCK.miliseconds >= 1000){
           //L_ROJO = !L_ROJO;
            CLOCK.miliseconds = 0;
            CLOCK.seconds ++;
       }
       MS++;
       TIME++;
       
       TMR0IF = 0;
    }
}

void InitButtons(){
    ST_B_VERDE = WAIT_PRESS;
    ST_B_AMARILLO = WAIT_PRESS;
    ST_B_ROJO = WAIT_PRESS;
}
void UpdateButtons(){
    if (ST_B_VERDE    == WAIT_PRESS   && B_VERDE    == 0){ ST_B_VERDE    = WAIT_CALL;  }
    if (ST_B_AMARILLO == WAIT_PRESS   && B_AMARILLO == 0){ ST_B_AMARILLO = WAIT_CALL;  }
    if (ST_B_ROJO     == WAIT_PRESS   && B_ROJO     == 0){ ST_B_ROJO     = WAIT_CALL;  }
    
    if (ST_B_VERDE    == WAIT_RELEASE && B_VERDE    == 1){ ST_B_VERDE    = WAIT_PRESS; }
    if (ST_B_AMARILLO == WAIT_RELEASE && B_AMARILLO == 1){ ST_B_AMARILLO = WAIT_PRESS; }
    if (ST_B_ROJO     == WAIT_RELEASE && B_ROJO     == 1){ ST_B_ROJO     = WAIT_PRESS; }
}
char B_VERDE_PRESS(){
    if (ST_B_VERDE == WAIT_CALL){
        ST_B_VERDE = WAIT_RELEASE;
        return 1;
    }
    return 0;
}
char B_AMARILLO_PRESS(){
    if (ST_B_AMARILLO == WAIT_CALL){
        ST_B_AMARILLO = WAIT_RELEASE;
        return 1;
    }
    return 0;
}
char B_ROJO_PRESS(){
    if (ST_B_ROJO == WAIT_CALL){
        ST_B_ROJO = WAIT_RELEASE;
        return 1;
    }
    return 0;
}
void Delay(int ms){
    while (ms --);
}

/** EEPROM, memoria no volatil
 
 EECON1, EECON2, EEDATA, EEADR
**/
char ReadMem(char addr){
    EEADR = addr;
    EEPGD = 0;
    RD = 1;
    Delay(100000);
    return EEDATA;
}
void WriteMem(char addr,char data){
    EEADR = addr;
    EEDATA = data;
    WREN = 1;
    EECON1 = 1;
    EECON2 = 0x55;
    EECON2 = 0x0AA;

    WREN = 0;
}

void InitAnalog(){
    ADCON1 = 0x0B;//0x0B; //an0, an1
    ADCON2 = 10011101;
}
void InitSP(){
    PisoActual = 0;
    ReadAnalog(PisoActual);
}
void ReadAnalog(char channel){
    CHS0 = channel % 2 == 1;
    CHS1 = channel % 4 >= 2;
    CHS2 = channel % 8 >= 4;
    CHS3 = channel % 16 >= 8;
    
    ADON = 1;
    GO = 1;
}
int GetAnalog(char *success){
    if (GO){
        *success = 0;
        return 0;
    }else{
        *success = 1;
    }
    
    int res;
    res =ADRESH; res<<=8; res+=ADRESL;  
    return res;
}
void UpdatePiso(){ //actualizar sensores de linea blanca
    char success;
    int value = GetAnalog(&success);
    if (success){
        V[PisoActual] = value;
        PisoActual = PisoActual >= 2        ? 0 : PisoActual+1;
        ReadAnalog(PisoActual);
    }
}

void MotorsStop(){
    MAStop();
    MBStop();
}
void MotorsHStop(){
    MAHStop();
    MBHStop();
}
void MotorsAdelante(){
    MAAdelante();
    MBAdelante();
}
void MotorsAtras(){
    MAAtras();
    MBAtras();
}
void MotorsDerecha(){
    MAAdelante();
    MBAtras();
}
void MotorsIzquierda(){
    MAAtras();
    MBAdelante();
}
void MotorsSpeed(int A,int B){
    MotorASpeed(A);
    MotorBSpeed(B);
}

void SetStatus(uc st){
    //ResetCount();
    ResetCounter();
    status = st;
    fStatus = 1;
}
uc NewStatus(){
    if (fStatus){
        fStatus = 0;
        return 1;
    }
    return 0;
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
    S = min(S,1000);
    S = max(S,-1000);
    
    ADIR = S > 0 ? 0 : 1;
    S = S > 0 ? S : 1000 + S; 
    
    CCP1CONbits.DC1B1 = S % 4;
    CCPR1L = S / 4;
}
void MotorBSpeed(int S){
    S = min(S,1000);
    S = max(S,-1000);
    
    BDIR = S > 0 ? 0 : 1;
    S = S > 0 ? S : 1000 + S;
    
    CCP2CONbits.DC2B = S % 4;
    CCPR2L = S / 4;
}