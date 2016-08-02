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
#define L_RED PORTDbits.RD4
#define L_YELLOW PORTDbits.RD5
#define L_GREEN PORTDbits.RD6

#define B_RED PORTDbits.RD0
#define B_YELLOW PORTDbits.RD1
#define B_GREEN PORTDbits.RD2


#define BSP PORTCbits.RC2
#define ASP PORTBbits.RB2

#define ADIR PORTDbits.RD3
#define BDIR PORTBbits.RB0

#define V0 PORTEbits.RE2
#define V1 PORTEbits.RE1
#define V2 PORTEbits.RE0
#define V3 PORTAbits.RA5
#define V4 PORTAbits.RA4

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
    InitSP();
    //MotorsPWM();
    
    
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
    TRISDbits.TRISD4 = OUTPUT;
    TRISDbits.TRISD5 = OUTPUT;
    TRISDbits.TRISD6 = OUTPUT;
    
    TRISDbits.TRISD0 = INPUT;
    TRISDbits.TRISD1 = INPUT;
    TRISDbits.TRISD2 = INPUT;
    
    // Motor
    TRISDbits.TRISD3 = OUTPUT;
    TRISCbits.TRISC2 = OUTPUT;

    TRISBbits.TRISB0 = OUTPUT;
    TRISBbits.TRISB2 = OUTPUT;

    TRISCbits.TRISC0 = INPUT; ///shortcut
    TRISCbits.TRISC1 = INPUT; //modification

    // IR
    TRISEbits.TRISE2 = INPUT;
    TRISEbits.TRISE1 = INPUT;
    TRISEbits.TRISE0 = INPUT;
    TRISAbits.TRISA5 = INPUT;
    TRISAbits.TRISA4 = INPUT;

    /*TRISDbits.TRISD1 = OUTPUT;
    TRISDbits.TRISD2 = OUTPUT;
    TRISDbits.TRISD0 = INPUT; //SHORTCUT
    TRISDbits.TRISD3 = OUTPUT;
    
    
    TRISCbits.TRISC1 = OUTPUT;
    TRISCbits.TRISC2 = OUTPUT;*/
    
    /*** SENSOR ***/
    /*TRISAbits.TRISA0 = INPUT;
    TRISAbits.TRISA1 = INPUT;
    TRISAbits.TRISA2 = INPUT;
    TRISAbits.TRISA3 = INPUT;
    TRISAbits.TRISA5 = INPUT;
    
    TRISEbits.TRISE0 = INPUT;
    TRISEbits.TRISE1 = INPUT;
    TRISEbits.TRISE2 = INPUT;
    TRISBbits.TRISB2 = INPUT;*/
    
    //TRISBbits.TRISB1 = INPUT;
    //TRISBbits.TRISB0 = INPUT;
    
    
    
    /*TRISCbits.TRISC6 = OUTPUT;
    TRISCbits.TRISC7 = INPUT;*/
    
    PORTEbits.RDPU = 1;
}


void ResetCounter(){
    TIME = 0;
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

void Delay(int ms){
    while (ms --);
}

/** EEPROM, memoria no volatil
 
 EECON1, EECON2, EEDATA, EEADR
**/
void InitAnalog(){
    ADCON1bits.VCFG1 = 0;
    ADCON1bits.VCFG0 = 0;
    
    ADCON1bits.PCFG3 = 1;
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
/*void MotorsSpeed(int A,int B){
    MotorASpeed(MODE == ALFA ? A : B);
    MotorBSpeed(MODE == BETA ? A : B);
}*/
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
	PR2=245; //249
	T2CONbits.TMR2ON=1;	//Arranco el timer


    CCP1CONbits.CCP1M = 1100;
    CCP2CONbits.CCP2M = 1100;
    PR2 = 245; //51;//51; //38 khz
    
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

/** pwm motor **/
int loop = 0;
int speedA = 0;
int speedB = 0;

void MotorsSpeed(int a,int b){
    speedA = a;
    speedB = b;
}
void MotorUpdate(){
    if (loop < abs(speedA)){
        if (speedA > 0){
            ASP = 1;
            ADIR = 0;
        }else{
            ASP = 0;
            ADIR = 1;
        }
    }else{
        ASP = 0;
        ADIR = 0;
    }
    if (loop < abs(speedB)){
        if (speedB > 0){
            BSP = 1;
            ADIR = 0;
        }else{
            BSP = 0;
            BDIR = 1;
        }
    }else{
        BSP = 0;
        BDIR = 0;
    }
    loop = loop == 9 ? 0 : (loop + 1);
}

/** Motor testing variables **/
int fns; // flag new state
int ma = 0, mb = 0 , mc = 0;
int fa = 0, fb = 0 , fc = 0; 

int fa , ma;
int fb , mb;
int d1 , d2;

/** End **/

int main(int argc, char** argv) {
    initYBOT();
    
    fa = 0;
    fb = 0;
    ma = 0;
    mb = 0;
    d1 = 0;
    d2 = 0;

    sa = 0;
    mode = 0;
    a = 0;
    gstatus = -1;
    WAITIME = 0;
    CURRENT = 0;
    actual = 0;
    status = ST;
    TIME = 0;
    Wixel(); //start wixel
    

    //MotorsSpeed(0,0);
    
    status = ST;
    while (TIME < 5000)
    
    //v[8] no existe
   // printf("{'COM':'line','value':'Rayito 2.0'}\n");
    
    fns = 1;
    while (1){
        MotorUpdate();
        L_RED = V1;
        L_YELLOW = V2;
        L_GREEN = V3;
        /*if (not B_GREEN and not ma){
            ma = 1;
            L_GREEN = not L_GREEN;
        }
        if (not B_YELLOW and not mb){
            mb = 1;
            L_YELLOW = not L_YELLOW;
        }
        if (not B_RED and not mc){
            mc = 1;
            L_RED = not L_RED;
        }
        if (B_GREEN) ma = 0;
        if (B_YELLOW) mb = 0;
        if (B_RED) mc = 0;*/
        /*if (not B_RED and not ma){
            ma = 1;
            d1 = d1 == 10 ? -10 : (d1 + 1);
        }
        if (not B_GREEN and not mb){
            mb = 1;
            d2 = d2 == 10 ? -10 : (d2 + 1);
        }
        if (B_RED) ma = 0;
        if (B_GREEN) mb = 0;
        MotorsSpeed(d1 ,d2 );
        L_RED = d1 != 0;
        
        L_GREEN = d2 != 0;*/

        //MotorsSpeed(d1*1000,d2*1000); // misma velocidad

        //ASP = 0;
        //BSP = 0;

        //ADIR = 0;
       // BDIR = 0;
        

        //L_YELLOW = TIME % 12000 > 6000;
        /*L_RED = V2;*/
        //L_GREEN = 0;
        //L_RED = 0;
        /*MotorsSpeed(0 , 0);
        L_YELLOW = TIME % 12000 > 6000;
        L_RED = V2;

       // ADIR = 1;
        //BDIR = 1;*/
    }
}

