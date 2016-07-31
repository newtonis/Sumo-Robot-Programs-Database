#include <xc.h>
#include <stdio.h>
#include <stdlib.h>

#include "config.h"

/*** COOL MACROS DEFINES ***/
#define ran(a,b,c) (max(min(a,c),b))
    
#define abs(a) (a>0?a:-(a))

/** NEW PCB **/
#define or ||
#define and &&
#define not !

#define Rand(i,j) ( ( (i*i)*(j*j)*36 )%256)


/*** IMPORTANT CONFIGURATIONS ***/
#define INVERTIR 0 ///1 = black line, 0 = white line
#define T1000 (TIME%6000) ///because of fast micro caused by using crystal
#define TCOOL (TIME/6)
#define TH (INVERTIR?100:900) ///TH means the black/white threshold
#define SPEEDTIME(w) (w/2-w/4-w/16) ///Ratio of max speed time in the rect
#define RECTTIME (SPEEDTIME(SIZES[CURRENT]*40)) ///With a single word we can get rect time

/*** robot different states ***/
enum {MOTOR_TEST, RED_ST , ST,INITIAL , CALIBRATION , WAIT ,AVANZAR , WRE2 , WRE1 ,WINITIAL};

//* para blanco negro */
/*double KP[4] = { 28, 90,90 , 28};
double KD[4] = {300,300,300,300};
double KR[4] = {0.2,0.0,0.2,0.1};
double SP[4] = {900,500,500,300};*/
double KP[4] = { 28, 80,60 , 28};
double KD[4] = {300,300,300,300};
double KR[4] = {0.2,0.1,0.2,0.1};
double SP[4] = {900,430,400,350};

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
int status;

/**** prototipos ****/
long long millis();
void initYBOT();
void UpdateYBOT();
void InitTIMERS();
void ResetCounter();
void SetLeds();
char B_VERDE_PRESS();
char B_AMARILLO_PRESS();
char B_ROJO_PRESS();
void EnhancedRead();
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


// *** sensor vars *** //
unsigned int amax[16];
unsigned int amin[16];
int P[16];

int line = 0;
int last = 0;
int der = 0;
int formula = 0;
// *** end *** /

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
void initYBOT(){
    TIME = 0;
    ResetCounter();
    gstatus = 0;
    configurations_init();
    InitAnalog();
    InitTIMERS(); 
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

void Delay(int ms){
    while (ms --);
}

/** EEPROM, memoria no volatil
 
 EECON1, EECON2, EEDATA, EEADR
**
*/

void initLED(){
    for (x = 0;x < 11;x++){
        amax[x] = 0;
        amin[x] = 1024;
    }
}

//mayor a 900 es blanco

enum {NODETECT , DETECT };

char mm;


//void CalRead();
void initLED();
void PID();
void Ponderado();

int cox;

/** Motor testing variables **/
int fns; // flag new state
int rf , gf; //red flag, green flag

// waste variables
int ma = 0, mb = 0;
int fa = 0, fb = 0;
/** End **/

#define ns 5
int LOW_SPEED = 470;
double test_kp = 7;
double test_kd = 20;

int pasada;
int fw[ns] = {6 , 5 , 4 , 3 , 2}; //central sensors
int pd[ns] = {-200, -100, 0 , 100 , 200}; //values
int sd[ns] = {1,7}; //side sensors

char b2;

#define C(i) ( ( ( ran ( V[i] , amin[i]  , amax[i] ) )  - amin[i] ) * 100 / (amax[i] - amin[i]) )

void Line(){ // line algorithm
    long a = 0;
    long b = 0;
    char g = 0;
    int j;
    long v , w;

    for (j = 0;j < ns;j++){
        int i = fw[j];
        v = V[i];  
        if (v < amin[i]){
            v = amin[i];
        }
        if (v > amax[i]){
            v = amax[i];
        }
        v -= amin[i];
        v *= 1000;
        v /= (amax[i] - amin[i]); //importance
        v = 1000 - v;
        if (v < 50){
            v = 0;
        }
        P[i] = v;
        w = pd[j]; //score

        // v e [0,100]
        a += v*w;
        b += v;
        if (v > 200){
            g = 1;
        }
    }
    // bordfer line detectors
    for (int j = 0;j < 2;j++){
        int i = sd[j];
        v = V[i];
        if (v < amin[i]) v = amin[i];
        if (v > amax[i]) v = amax[i];
        v -= amin[i]; v *= 1000; v /= (amax[i]-amin[i]); v = 1000 - v;
        P[i] = v;
    }

    if (g == 0){
        line = line > 0 ? 200 : -200;
        return;
    }
    line = a / b;
}

int main(int argc, char** argv) {
    initYBOT();
    
    gstatus = -1;
    WAITIME = 0;
    CURRENT = 0;
    actual = 0;
    status = ST;
    TIME = 0;
    Wixel(); //start wixel
    
    MotorsSpeed(0,0);
    ENABLEA = 1;
    
    status = ST;
    while (TIME < 5000)
    
    //v[8] no existe
   // printf("{'COM':'line','value':'Rayito 2.0'}\n");
    
    fns = 1;
    while (1){
        //EnhancedRead();
        
        
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
                EnhancedRead();
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
                    TIME = 0;
                    initLED(); // reset calibration
                }
                int i,j;
                /*for (j = 0;j < 5;j++){
                    i = fw[j];
                    printf("{'COM':'plot','name':'S%i','value':%i, 'color':(%d,%d,%d)}\n",i,V[i],Rand(i,2),Rand(i,3),Rand(i,4));
                }*/
                for (j = 0;j < 2;j++){
                    i = sd[j];
                    printf("{'COM':'plot','name':'S%i','value':%i, 'color':(%d,%d,%d)}\n",i,V[i],Rand(i,2),Rand(i,3),Rand(i,4));
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
                int i,j;
                /*for (j = 0;j < 5;j++){
                    i = fw[j];
                    printf("{'COM':'plot','name':'S%i','value':%i, 'color':(%d,%d,%d)}\n",i,V[i],Rand(i,2),Rand(i,3),Rand(i,4));
                }*/
                if (TIME > 1000){
                    TIME = 0;
                    for (j = 0;j < 2;j++){
                        i = sd[j];
                        printf("{'COM':'plot','name':'S%i','value':%i, 'color':(%d,%d,%d)}\n",i,V[i],Rand(i,4),Rand(i,1),Rand(i,2)); 
                    }
                }

                int i, j;
                for (i = 0;i < 11;i++){
                    //amax[i] = max(amax[i],V[i]);
                    //amin[i] = min(amin[i],V[i]);
                    j = i;
                    if (V[j] > amax[j]){
                        amax[j] = V[j];
                    }
                    if (V[j] < amin[j]){
                        amin[j] = V[j];
                    }
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
                    fns = 1;
                    status = INITIAL;
                    int i,j;
                    for (i = 0;i < 5;i++){
                        j = fw[i];
                        printf("{'COM':'line','value':'S[ %04u ] : [%04u , %04u ]'}\n" ,j,amin[j],amax[j] );
                    }
                }
            break;
            case INITIAL:
                if (fns){
                    rf = 1;
                    gf = 1;
                    fns = 0;
                }
                L_VERDE = 1;
                L_AMARILLO = 0;
                L_ROJO = 0;


                MotorsSpeed(0,0);

                EnhancedRead();
                Line();
                if (TIME > 500){
                    TIME = 0;
                    int i,j;
                    //for (j = 0;j < 5;j++){
                    //    i = fw[j];
                    //    printf("{'COM':'plot','name':'S%i','value':%i, 'color':(%d,%d,%d)}\n",i,P[i],Rand(i,2),Rand(i,3),Rand(i,4));
                    //}
                    for (j = 0;j < 2;j++){
                        i = sd[j];
                        printf("{'COM':'plot','name':'S%i','value':%i, 'color':(%d,%d,%d)}\n",i,P[i],Rand(i,5),Rand(i,1),Rand(i,3));
                    }
                    printf("{'COM':'plot','name':'line','value':%i,'color':(0,100,200)}\n",line);
                }
                if (B_AMARILLO == 0){
                    status = WAIT;
                }
                if (B_ROJO == 0 and rf == 0){
                    rf = 1;
                    test_kp -= 0.01;
                    printf("{'COM':'line','value':'kp = %f'}\n",test_kp);
                }
                if (B_VERDE == 0 and gf == 0){
                    gf = 1;
                    test_kp += 0.01;
                    printf("{'COM':'line','value':'kp = %f'}\n",test_kp);
                }
                if (B_ROJO == 1) rf = 0;
                if (B_VERDE == 1) gf = 0;
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
                /*L_VERDE = 1;//TIME % 1000 > 500;
                L_AMARILLO = 1;
                L_ROJO = 0;

                EnhancedRead();
                
                ll a = Line();
                ll b = a - prev2_line;
                ll rt = a * test_kp + b * test_kd;
                
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
                }*/
                if (B_ROJO == 0){
                    fns = 1;
                    status = INITIAL;
                }
                

                L_VERDE = TIME % 500 > 250;
                L_AMARILLO = 1;
                L_ROJO = 0;

                EnhancedRead();
                Line();

                der = line - last;

                formula = line * test_kp + der * test_kd;

                if (formula > 0){
                    MotorsSpeed(LOW_SPEED - formula , LOW_SPEED);
                }else{
                    MotorsSpeed(LOW_SPEED , LOW_SPEED + formula);
                }

                last = line;
            break;
        }
    }
}

