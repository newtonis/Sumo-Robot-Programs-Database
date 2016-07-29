#include <xc.h>
#include <stdio.h>
#include <stdlib.h>

/*** COOL MACROS DEFINES ***/
#define ran(a,b,c) (max(min(a,c),b))
    
#define abs(a) (a>0?a:-(a))
#define Mr(a,b) (a>0?(a):(a*b))

/** OLD PCB **/
#define T(x) (INVERTIR ? (1024 - V[x+4<7?x+4:x+4-7]) : (V[x+4<7?x+4:x+4-7]) )
#define J(x) (INVERTIR ? (1024 - V[x]) : (V[x]))

/** NEW PCB **/


#define or ||
#define and &&
#define not !
/*** types defines to make them easier and faster to type **/
typedef unsigned int ui;  
typedef unsigned char uc;
typedef long long ull;
typedef long long ll;
typedef long long pp;


enum {ALFA,BETA};

/*** IMPORTANT CONFIGURATIONS ***/
#define INVERTIR 0 ///1 = black line, 0 = white line
#define T1000 (TIME%6000) ///because of fast micro caused by using crystal
#define TCOOL (TIME/6)
#define TH (INVERTIR?100:900) ///TH means the black/white threshold
#define MODE ALFA ///Just in the case the motors are inverted (ALPHA=normal,BETA=inverted)
#define SPEEDTIME(w) (w/2-w/4-w/16) ///Ratio of max speed time in the rect
#define RECTTIME (SPEEDTIME(SIZES[CURRENT]*40)) ///With a single word we can get rect time

/*** robot different states ***/
enum {MOTOR_TEST, RED_ST , ST,INITIAL , CALIBRATION , WAIT ,AVANZAR , WRE2 , WRE1 ,WINITIAL};


/*** CONFIGURATIONS OF THE MICROCHIP BASIC BITS ***/
#define _XTAL_FREQ   48000000 //20000000UL // This one is just for __delay_ms

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
//* para blanco negro */
/*double KP[4] = { 28, 90,90 , 28};
double KD[4] = {300,300,300,300};
double KR[4] = {0.2,0.0,0.2,0.1};
double SP[4] = {900,500,500,300};*/
double KP[4] = { 28, 80,60 , 28};
double KD[4] = {300,300,300,300};
double KR[4] = {0.2,0.1,0.2,0.1};
double SP[4] = {900,430,400,350};

enum {OUTPUT,INPUT};
enum {WAIT_PRESS , WAIT_CALL , WAIT_RELEASE };
enum { INICIO , PAUSA , LEER , PAUSA2};


///////c            cC

/* Para mi casa */
/*
double KP[4] = { 28, 28,28 , 28};
double KD[4] = {300,300,300,300};
double KR[4] = {0.2,0.1,0.2,0.1};
double SP[4] = {800,450,300,200};
*/

int speedMode;

long TIMEFRENO = 200;
long WAITIME;
long WAITFRENAR;

ll TIME; ///Time count
char MF; //memory focused
char RWM; //Read or write
int AMOUNT; //amount of rects
int CURRENT; //current rect
ll SIZES[255]; //time of each rect measured in mili-seconds

/**** prototipos ****/
long long millis();
void initYBOT();
void UpdateYBOT();
void InitTIMERS();
void ResetCounter();
void SetLeds();
void InitButtons();
void UpdateButtons();
char B_VERDE_PRESS();
char B_AMARILLO_PRESS();
char B_ROJO_PRESS();
void EnhancedRead();
void InitAnalog();
void ReadAnalog(char channel);
int GetAnalog(char *success);
void UpdatePiso();
void InitSP();
void MotorsStop();
void MotorsHStop();
void MotorsAdelante();
void MotorsAtras();
void MotorsDerecha();
void MotorsIzquierda();
void MAStop();
void MBStop();
void MAHStop();
void MBHStop();
void MAAdelante();
void MBAdelante();
void MAAtras();
void MBAtras();
void MotorsSpeed(int A,int B);
void MotorASpeed(int S);
void MotorBSpeed(int S);
void MotorsStart();
void MotorsUpdate();
void MotorsPWM();
void ControlSpeed();
void LineUpdate();
/**** EEPROM FUNCTIONS ***/
void WriteMem(uc addr,uc data); ///Write eeprom register
void ReadMem(uc addr,uc *data); ///Read eeprom register
void CheckMem(uc *data); //Check if current memory is written
void Length(int *data); //Check mememory length
void GetValue(int item,int *data); //Check memory item value
void CheckMem(uc *data); //Check if current memory is writte
void GetValue(int item,int *data); //Check memory item value
void EreaseAll(); //erase all memory
void Load(); ///Load EEPROM into RAM

/*** Status machine functions ***/
void SetStatus(uc st); ///Set new status
uc NewStatus(); ///Check if it is the first iteration of status

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

void EreaseAll(){
    /** WriteMem(address , data ) ***/

    WriteMem(0  ,0);  //We indicate the length of memory block 0 is 0
    WriteMem(128,0);  //We indicate the length of memory block 1 is 0
}
void CheckMem(uc *data){ ///Check if the currently foucsed memory block has data
    uc rta;
    if (MF == 0){ //If memory block focused is the memory 0
        ReadMem(0,&rta);
    }else if(MF == 1){ //If not
        ReadMem(128,&rta);
    }
    *data = rta == 0 ? 0 : 1;
}
void Length(int *data){ ///Check memory focused block length value
    uc add = MF ? 128 : 0; 
    uc rta;
    ReadMem(add,&rta);
    *data = (int)rta;
}
void GetValue(int item,int *data){ ///Check the value of a memory block item
    uc add = MF ? 128 : 0;
    uc rta;
    ReadMem(add + 1 + item , &rta);
    *data = (int)rta;
}
void Load(){ ///We'll load the EEPROM data into the RAM memory
    Length(&AMOUNT);
    int x;
    for (x = 0;x < AMOUNT;x++){
        GetValue(x, (int)&(SIZES[x]) );
        //TIME = 0;
        //while (TCOOL < 500){
        //    L_AMARILLO = 1;
        //}
        //TIME = 0;
        //L_AMARILLO = 0;
        //while (TCOOL < 500){
         //   L_AMARILLO = 0;
        //}
    }
}
void Save(){
    uc sum; sum = MF ? 128 : 0;
    WriteMem(sum,(uc)CURRENT);
    int x;
    for (x = 0;x < CURRENT;x++){
        WriteMem(sum + x + 1,(uc)(SIZES[x]));
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

char ST_B_VERDE , ST_B_AMARILLO , ST_B_ROJO;
int V[16];

char PisoActual;
char VistActual;
unsigned char low,high;

pp value;

ui mCiclo; //momento del ciclo
uc iStatus; //infrared status

uc status;
uc fStatus; //flag new status

ui IRCounter;

ull MS;

ll amax[11];
ll amin[11];
ll POSICION;
ll PIDf;
ll LP;
ll DER;
ll sum;
ll division;
int x;
int a,b;
ll w,v;
char nove; 
char actual; //0 RECTA, 1 CURVA
char gstatus;

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
    
    TIME = 0;
    MS = 0;
    ResetCounter();
    gstatus = 0;
    
    configurations_init();
    InitAnalog();
    InitTIMERS(); 
    InitButtons();
    InitSP();
    MotorsPWM();
    
    
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
void UpdateYBOT(){
    
    UpdateButtons();
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


void ResetCounter(){
    TIME = 0;
}

void Ponderado(){
    sum = 0;
    division = 0;
    nove = 0;
    char center;
    char sta[7];

    //L_VERDE = T(0) > 500;
    for (x = 0;x <= 6;x++){

        
        w = ran(T(x),amin[x],V[x]);
        
        w -= amin[x];
        w *= (ll)1000;
        w /= (amax[x]-amin[x]);
        if (w > TH){
            nove = 1;
        }
        if (x == 3){
            if (w > TH){ center = 1; }else{ center = 0; }
        }
        v = (1000) * (x-3);
        ///A es la impotancia
        ///B es la posicion de A importancia
        sta[x] = (w > TH);
        if (x == 0 or x == 6){ continue; }
        sum += (w*v); //B va a ser 0 o 1000
        division += (w);
        
    }
    w = ran(J(7),amin[7],amax[7]);
    w -= amin[7];
    w *= (ll)1000;
    w /= (amax[7]-amin[7]);
    if (WAITIME == 0){
        if ((sta[0] && sta[5] && sta[6]) or w > TH){
            WAITIME = 100;

            //L_ROJO = 1;
           /* gstatus = -1;
            SetStatw > THus(ST);
            MotorsSpeed(0,0);*/
            if (gstatus == 2){
                if (actual == 0){ //0 = RECTA
                    WAITFRENAR = 0;
                    actual = 1;
                    //TIME = RECT DURATION IN MILISECONDS
                    ///We must translate to the memory system

                    if (RWM == 0){ //Write mode
                        SIZES[CURRENT] = TCOOL / 40;
                    }
                    CURRENT ++;
                }else{
                    actual = 0;
                    TIME = 0; //we reset counter as the rect has just started
                }
            }
        }
    }
    //L_ROJO = (sta[0] && sta[5] && sta[6]);
    L_ROJO = actual == 0;
    L_AMARILLO = actual == 0;
    L_VERDE = actual == 0;
    // = actual == 0;
    //L_AMARILLO = nove == 0;
    if (nove == 0){
        //L_AMARILLO = 1;
        POSICION = POSICION > 0 ? 300 : - 300;
        
    }else{
        //L_AMARILLO = 0;
        POSICION = (ll)(sum) / (ll)(division);
        POSICION /= 10;
    }
    //L_VERDE = POSICION > 250;
    //L_ROJO = POSICION < -250;
}
void LineFollow(){
    double kp,kd,kr,speed;
    if (RWM == 0){
        speedMode = actual == 0 ? 2 : 1; ///We are tracking the track, so we go always in slow mode
    }else if (actual == 1){
        speedMode = 1;
    }else if (TCOOL < RECTTIME){
        speedMode = 0;
    }else{
        speedMode = 3;
    }

    if (RWM == 1 and actual == 0 && CURRENT >= AMOUNT-1 and TCOOL >= RECTTIME/2){
        if (TCOOL <= RECTTIME){
            speedMode = 2;
        }else{
            SetStatus(INITIAL); ///We end the track
        }
    }
    if (RWM == 0){
        L_AMARILLO = 1;
    }else{
        L_AMARILLO = 0;
    }
    if (RWM == 1){
        L_VERDE = actual == 0 and TCOOL < RECTTIME;
    }
    if (SPECIAL == 1 && CURRENT == 3 && speedMode == 3){
        speed = 0;
    }else{
        speed = SP[speedMode];
    }
    if (SPECIAL == 1 && (CURRENT == 7 or CURRENT == 5) && RWM == 1){
        speed = 350;
    }
    kp = KP[speedMode];
    kd = KD[speedMode];
    kr = KR[speedMode];

    DER = POSICION - LP;
    PIDf = (POSICION* kp + DER * kd); //3.6: (POSICION*4 + DER*150); //4 y 100
    if (WAITFRENAR == 0){
        if (PIDf > 0){
            MotorsSpeed(Mr(speed-PIDf,kr) , speed);
        }else{
            MotorsSpeed(speed , Mr(speed+PIDf,kr) );
        }
    }else{
        if (PIDf > 0){
            MotorsSpeed(-1000 , 1000);
        }else{
            MotorsSpeed(1000 , -1000 );
        }
        WAITFRENAR --;
    }
    LP = POSICION; 
}

void interrupt enc(void){
    if (TMR0IF){
       TIME ++;
       TMR0H = 0xF8;//E8;
       TMR0L = 0x2F;//90;//90;
       
       
       TMR0IF = 0;
    }
}
/*void CalRead(){
    //L_ROJO = T1000 < 500*6;
    int x;
    for (x = 0;x < 7;x++){
        amax[x] = max(amax[x],T(x));
        amin[x] = min(amin[x],T(x));
    }
    amax[7] = max(amax[7],J(7));
    amin[7] = min(amin[7],J(7));
}*/


void LineUpdate(){
    if (WAITIME > 0){
        WAITIME --;
    }
    EnhancedRead();
    if (gstatus == 0){
        CalRead();
    }
    if (gstatus >= 1){ 
        Ponderado();
    }
    if (gstatus == 2){
        LineFollow();
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
    }
    PisoActual = PisoActual > 10 ? 0 : PisoActual+1;
    ReadAnalog(PisoActual);
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
void initLED(){
    int x;
    for (x = 0;x < 11;x++){
        amax[x] = 0;
        amin[x] = 1024;
    }
}



int sa;
int suma[4];
int a,b,mode;
int giro=0;
int next;
int ms=0;

//mayor a 900 es blanco

enum {NODETECT , DETECT };


enum {QUIET , FORWARD, ROUNDLEFT , ROUNDRIGHT ,POWERFRONT , CUSTOM };

char mm;


//void CalRead();
void initLED();
void PID();
void Ponderado();

int cox;

/** Motor testing variables **/
int fns; // flag new state
int ma = 0, mb = 0;
int fa = 0, fb = 0;
/** End **/

#define ns 5
#define LOW_SPEED 450
#define test_kp 6
#define test_kd 50

int pasada;
int fw[ns] = {6 , 5 , 4 , 3 , 2}; //central sensors
int pd[ns] = {-2, -1, 0 , 1 , 2}; //values

char b2;
ll prev_line;
ll prev2_line;

#define C(i) ( ( ( ran ( V[i] , amin[i]  , amax[i] ) )  - amin[i] ) * 100 / (amax[i] - amin[i]) )

int Line(){ // line algorithm
    ll a = 0;
    ll b = 0;
    int i;
    ll v;
    int g = 0;
    for (i = 0;i < ns;i++){
        v = 100 - C(fw[i]);
        a += pd[i] * 100 * v;
        b += v;
        if (v > 30){
            g = 1;
        }
    }
    if (g == 0){
        prev_line = prev_line > 0 ? 180 : -180;
        return prev_line / 4; 
    }
    prev_line = a / b;
    return a / b / 4;
}

int main(int argc, char** argv) {
    initYBOT();
    
    sa = 0;
    mode = 0;
    a = 0;
    gstatus = -1;
    WAITIME = 0;
    CURRENT = 0;
    actual = 0;
    status = ST;
    TIME = 0;
    prev2_line = 0;
    Wixel(); //start wixel
    

    MotorsSpeed(0,0);
    ENABLEA = 1;
    
    status = ST;
    while (TIME < 5000)
    
    //v[8] no existe
   // printf("{'COM':'line','value':'Rayito 2.0'}\n");
    
    fns = 1;
    while (1){
        EnhancedRead();
        
        
        //L_ROJO = 0;
        switch (status){
            case MOTOR_TEST:
                L_AMARILLO = TIME % 1000 > 500;
                if (ma == 0){
                    L_ROJO = 0;
                }else if(ma == 1){
                    L_ROJO = 1;
                }else if(ma == -1){
                    L_ROJO = TIME % 1000 > 500;
                }
                if (mb == 0){
                    L_VERDE = 0;
                }else if(mb == 1){
                    L_VERDE = 1;
                }else if(mb == -1){
                    L_VERDE = TIME % 1000 > 500;
                }

                if (fns){
                    fns = 0;
                    printf("{'COM':'line','value':'Motor test'}\n");
                }

                if (B_ROJO == 0 and fa == 0){
                    fa = 1;
                    ma = ma == 1 ? -1 : (ma + 1);
                }
                if (B_VERDE == 0 and fb == 0){
                    fb = 1;
                    mb = mb == 1 ? -1 : (mb + 1);
                }
                if (B_ROJO == 1) fa = 0;
                if (B_VERDE == 1) fb = 0;

                MotorsSpeed( ma * 1000 , mb * 1000);
            break;
            case ST:
                if (fns){
                    fns = 0;
                    printf("{'COM':'line','value':'Rayito 2.0'}\n");
                }
                L_VERDE = 0;
                L_AMARILLO = TIME % 2000 > 1000;
                L_ROJO = 0;
                if (B_AMARILLO == 0){
                    printf("{'COM':'line','value':'Entering calibration'}\n");
                    status = CALIBRATION;
                    initLED(); // reset calibration
                }
                int i,j;
                for (j = 0;j < 5;j++){
                    i = fw[j];
                    printf("{'COM':'plot','name':'S%i','value':%i, 'color':(%d,%d,%d)}\n",i,V[i],255 - i * 10,0, i * 10);
                }
            break;
            case RED_ST:
                L_ROJO = 1;
                L_AMARILLO = 0;
                L_VERDE = 0;
                if (TIME > 2000) status = ST;
            break;
            case CALIBRATION:
                EnhancedRead();
                for (x = 0;x < 11;x++){
                    amax[x] = max(amax[x],V[x]);
                    amin[x] = min(amin[x],V[x]);
                }
                
                L_AMARILLO = TIME % 300 > 200;
                L_ROJO = TIME % 300 > 100 and TIME % 300 < 200;
                L_VERDE = TIME % 300 < 100;
                
                if (B_ROJO == 0){
                    printf("{'COM':'line','value':'Reset calibration'}\n");
                    TIME = 0;
                    status = RED_ST;
                }
                if (B_VERDE == 0){
                    printf("{'COM':'line','value':'initial mode'}\n");
                    TIME = 0;
                    status = INITIAL;
                }
            break;
            case INITIAL:
                L_VERDE = 1;
                L_AMARILLO = 0;
                L_ROJO = 0;


                MotorsSpeed(0,0);

                EnhancedRead();
                
                if (TIME > 1000){
                    TIME = 0;
                    int i,j;
                    for (j = 0;j < 5;j++){
                        i = fw[j];
                        printf("{'COM':'plot','name':'S%i','value':%i, 'color':(%d,%d,%d)}\n",i,C(i),255 - i * 10,0, i * 10);
                    }
                    int line = Line();
                    printf("{'COM':'plot','name':'line','value':%i,'color':(0,100,200)}\n",line);
                }
                if (B_AMARILLO == 0){
                    status = WAIT;
                }
            break;
            case WAIT:
                L_VERDE = 1;
                L_AMARILLO = 1;
                L_ROJO = 1;
                if (B_AMARILLO == 1){
                    status = AVANZAR;
                }
            break;
            case AVANZAR:
                L_VERDE = 1;//TIME % 1000 > 500;
                L_AMARILLO = 1;
                L_ROJO = 0;

                EnhancedRead();
                ll a = Line();
                ll b = a - prev2_line;
                ll rt = a * test_kp + b * test_kd;
                /*if (rt > 0){
                    MotorsSpeed(LOW_SPEED , LOW_SPEED - rt);
                }else{
                    MotorsSpeed(LOW_SPEED + rt , LOW_SPEED);
                }*/
                //MotorsSpeed(LOW_SPEED,LOW_SPEED);
                ll am , bm;
                if (rt > 0){
                    am = LOW_SPEED - rt;
                    bm = LOW_SPEED;
                }else{
                    am = LOW_SPEED;
                    bm = LOW_SPEED + rt;
                }
                MotorsSpeed(am,bm);
                prev2_line = a;
                if (TIME > 500){
                    TIME = 0;
                    printf("{'COM':'plot','name':'line','value':%i,'color':(0,100,200)}\n",a);
                    printf("{'COM':'plot','name':'rt','value':%i,'color':(0,100,200)}\n",rt);
                    printf("{'COM':'plot','name':'a','value':%i,'color':(100,0,200)}\n",am);
                    printf("{'COM':'plot','name':'b','value':%i,'color':(100,0,200)}\n",bm);
                }
                if (B_ROJO == 0){
                    status = INITIAL;
                }
            break;
        }
    }
}

