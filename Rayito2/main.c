

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
#define RECTTIME (SPEEDTIME(LEN[rcount/2]*40)) ///With a single word we can get rect time
#define STOPTIME (RECTTIME + 70)

#define BORDER_LIMIT 500 ///SENSOR BORDER LIMIT

/*** robot different states ***/
enum {MOTOR_TEST, GREEN_RELEASE_INITIAL , NEW_AVANZAR , RELEASE_INIT , WAIT_FRONT , RECT_FRONT , RED_ST , ST,INITIAL , CALIBRATION , WAIT ,AVANZAR , WRE2 , WRE1 ,WINITIAL};

int speedMode;
 
long TIMEFRENO = 200;
long WAITIME;
long WAITFRENAR;

ll TIME; ///Time count
ll TIME2;
ll TIME3; 
ll TIME4;
int status;

/**** prototipos ****/
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
void CheckMem(uc *data); //Check if current memory is written
void Length(int *data); //Check mememory length
void GetValue(int item,int *data); //Check memory item value
void CheckMem(uc *data); //Check if current memory is writte
void GetValue(int item,int *data); //Check memory item value
void EreaseAll(); //erase all memory
void Load(); ///Load EEPROM into RAM

/*** Status machine functions ***/

void EreaseAll(){
    /** WriteMem(address , data ) ***/

    WriteMem(0  ,0);  //We indicate the length of memory block 0 is 0
    WriteMem(128,0);  //We indicate the length of memory block 1 is 0
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

void ResetCounter(){
    TIME = 0;
}

void interrupt enc(void){
    if (TMR0IF){
       TIME ++;
       TIME2 ++;
       TIME3 ++;
       TIME4 ++;
       TMR0H = 0xF8;//E8;
       TMR0L = 0x2F;//90;//90;
       TMR0IF = 0;
    }
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
int LOW_SPEED = 520;
double test_kp = 7;
double test_kd = 20;

enum {TEST , CURVE , SLOW , FAST , MOD_STOP , NORMAL };

int    VEL[6] = {450 , 700 , 400 , 1000 , -1000 , 400};
double VKP[6] = { 7  , 6.3  , 5  , 6    ,  6    , 6};
double VKD[6] = { 20 , 50  , 30  , 50   , 50    , 50};

int pasada;
int fw[ns] = {6 , 5 , 4 , 3 , 2}; //central sensors
int pd[ns] = {-200, -100, 0 , 100 , 200}; //values
int sd[ns] = {1,7}; //side sensors

int TOTAL; //Amount of memory of rects
int LEN[100]; // MEMORY of rects

char MF = 0; //memory focused
char RWM = 0; //Read or write

int flag_line = 0;
int rcount = 0;

char b2;

void ShowMem(){
    int x;
    for (x = 0;x < TOTAL;x++) printf("{'COM':'line','value':'[%i] = %i'}\n",x+1,LEN[x]);
}
void CheckMem(uc *data){ ///Check if the currently foucsed memory block has data
    uc rta;
    if (MF == 0){ //If memory block focused is the memory 0
        ReadMem(0,&rta);
    }else if(MF == 1){ //If not
        ReadMem(128,&rta);
    }
    *data = (rta == 0 or rta == 255) ? 0 : 1;
}
void Save(){
    uc sum; sum = MF ? 128 : 0;
    WriteMem(sum,(uc)TOTAL);
    int x;
    for (x = 0;x < TOTAL;x++){
        WriteMem(sum + x + 1,(uc)(LEN[x]));
    }
    ShowMem();
}

void Length(int *data){ ///Check memory focused block length value
    uc add = MF ? 128 : 0; 
    uc rta;
    ReadMem(add,&rta);
    *data = (int)rta;
}
void Load(){ ///We'll load the EEPROM data into the RAM memory
    Length(&TOTAL);
    int x;
    for (x = 0;x < TOTAL;x++) GetValue(x, (int)&(LEN[x]) );
}
void GetValue(int item,int *data){ ///Check the value of a memory block item
    uc add = MF ? 128 : 0;
    uc rta;
    ReadMem(add + 1 + item , &rta);
    *data = (int)rta;
}


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

void AdvanceLow(){
    int speed;
    double kp , kd;
    int mod;
    speed = VEL[2];
    kp = VKP[2];
    kd = VKD[2];

    der = line - last;
    formula = line * kp + der * kd;
    if (formula > 0){
        MotorsSpeed(speed - formula , speed);
    }else{
        MotorsSpeed(speed , speed + formula);
    }
    last = line;
}
#define INSIDE (abs(line)<150)
#define LSEE (P[sd[0]] > BORDER_LIMIT and INSIDE)
#define RSEE (P[sd[1]] > BORDER_LIMIT and INSIDE)


int main(int argc, char** argv) {
    initYBOT();
    
    gstatus = -1;
    WAITIME = 0;
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
                    printf("{'COM':'line','value':'Loading eeprom'}\n");
                    MF = 1; uc old; CheckMem(&old);
                    if (old == 0){
                        printf("{'COM':'line','value':'Green memory empty'}\n");
                    }else{
                        Load();
                        printf("{'COM':'line','value':'Green memory'}\n");
                        ShowMem();
                    }
                    MF = 0; uc old; CheckMem(&old);
                    if (old == 0){
                        printf("{'COM':'line','value':'Red memory empty'}\n");
                    }else{
                        Load();
                        printf("{'COM':'line','value':'Red memory:'}\n");
                        ShowMem();
                    }
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
                    status = GREEN_RELEASE_INITIAL;
                    int i,j;
                    for (i = 0;i < 5;i++){
                        j = fw[i];
                        printf("{'COM':'line','value':'S[ %04u ] : [%04u , %04u ]'}\n" ,j,amin[j],amax[j] );
                    }
                }
            break;
            case GREEN_RELEASE_INITIAL:
                L_VERDE = 1;
                L_AMARILLO = 0;
                L_ROJO = 0;
                if (B_VERDE == 1){
                    status = INITIAL;
                }
            break;
            case INITIAL:
                if (fns){
                    rf = 1;
                    gf = 1;
                    fns = 0;
                }
                L_VERDE = 1;
                L_AMARILLO = RSEE or LSEE;
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
                if (B_ROJO == 0){
                    MF = 0;
                    uc old; CheckMem( &old );
                    if (old == 0){
                        RWM = 0;
                        rcount = 0;
                        status = WAIT_FRONT;
                        printf("{'COM':'line','value':'Writing RED memory'}\n");
                    }else{
                        printf("{'COM':'line','value':'Selecting RED memory'}\n");
                        MF = 0; uc old; CheckMem(&old);
                        Load();
                        printf("{'COM':'line','value':'RED memory:'}\n");
                        ShowMem();                    
                    }
                    //status = WAIT;
                }
                if (B_VERDE == 0){
                    MF = 1;
                    uc old; CheckMem( &old );
                    if (old == 0){
                        RWM = 0;
                        rcount = 0;
                        status = WAIT_FRONT;
                        printf("{'COM':'line','value':'Writing GREEN memory'}\n");
                    }else{
                        printf("{'COM':'line','value':'Selecting GREEN memory'}\n");
                        MF = 1; uc old; CheckMem(&old);
                        Load();
                        printf("{'COM':'line','value':'GREEN memory:'}\n");
                        ShowMem();   
                    }
                   // status = WAIT;
                }
                /*if (B_ROJO == 0 and rf == 0){
                    rf = 1;
                    test_kp -= 0.01;
                    printf("{'COM':'line','value':'kp = %f'}\n",test_kp);
                }
                if (B_VERDE == 0 and gf == 0){
                    gf = 1;
                    test_kp += 0.01;
                    printf("{'COM':'line','value':'kp = %f'}\n",test_kp);
                }*/
                //if (B_ROJO == 1) rf = 0;
                //if (B_VERDE == 1) gf = 0;
            break;
            case WAIT:
                L_VERDE = 1;
                L_AMARILLO = 1;
                L_ROJO = 1;
                if (B_AMARILLO == 1){
                    status = NEW_AVANZAR;
                    fns = 1;
                    TIME = 0;
                    TIME2 = 0;
                    TIME3 = 0;
                    TIME4 = 0;
                    rcount = 0;
                    flag_line = 0;
                }
                if (B_VERDE == 0){
                    EreaseAll();
                    printf("{'COM':'line','value':'Memory erased'}\n");
                    status = GREEN_RELEASE_INITIAL;
                }
            break;
            case WAIT_FRONT:
                L_VERDE = 1;
                L_AMARILLO = 0;
                L_ROJO = 0;
                MotorsSpeed(0,0);
                if (B_AMARILLO == 0){
                    printf("{'COM':'line','value':'Writing rect %i'}\n",rcount);
                    status = RECT_FRONT;
                    TIME4 = 0;
                    TIME3 = 0;
                }
                if (B_ROJO == 0 and rcount > 0){
                    printf("{'COM':'line','value':'Save data'}\n");
                    TOTAL = rcount;
                    Save();
                    status = RELEASE_INIT;
                }
            break;
            case RELEASE_INIT:
                L_VERDE = 1;
                L_AMARILLO = 1;
                L_ROJO = 1;
                if (B_ROJO == 1){
                    status = INITIAL;
                }
            break;
            case RECT_FRONT:
                L_ROJO = 1;
                L_AMARILLO = 1;
                L_VERDE = 1;
                
                if (TIME3 > 5){
                    EnhancedRead();
                    Line();
                    TIME3 = 0;
                    AdvanceLow();
                
                    if (RSEE or LSEE){                    
                        status = WAIT_FRONT;
                        TIME = 0;
                        LEN[rcount] = TIME4 / 40 / 6; // set on memory
                        rcount ++ ;
                       //printf("{'COM':'Settle','name':'Area %i','color':(100,100,255)}\n",rcount);
                    }
                }
            break;
            case NEW_AVANZAR:
                if (fns){
                    printf("{'COM':'line','value':'Entering rect f(%i) = (%i) (%i) (%i)'}\n" , rcount/ 2 , LEN[rcount/2],RECTTIME , STOPTIME);
                    fns = 0;
                }
                if (B_ROJO == 0){
                    fns = 1;
                    status = INITIAL;
                }

                if (TIME3 > 5){
                    TIME3 = 0;
                    EnhancedRead();
                    Line();
                    int speed;
                    double kp , kd;
                    int mod;

                    if (rcount % 2 == 1){
                        mod = CURVE;
                    }else{
                        if (TIME4/6 < RECTTIME){
                            mod = FAST;
                        }else if (TIME4/6 < STOPTIME and LEN[rcount/2] > 20){
                            mod = MOD_STOP;
                        }else{
                            mod = NORMAL;
                        }
                    }
                    speed = VEL[mod];
                    kp = VKP[mod];
                    kd = VKD[mod];
                    der = line - last;
                    formula = line * kp + der * kd;

                    if (formula > 0){
                        MotorsSpeed(speed - formula , speed);
                    }else{
                        MotorsSpeed(speed , speed + formula);
                    }
                    last = line;

                    if (flag_line == 0){
                        if (RSEE or LSEE){
                            flag_line = 1;
                            TIME = 0;
                            TIME4 = 0;
                            L_AMARILLO = !L_AMARILLO;
                            rcount ++ ;
                            if (rcount % 2 == 1){
                                printf("{'COM':'line','value':'Entering curve'}\n");
                            }else{
                                printf("{'COM':'line','value':'Entering rect f(%i) = (%i) (%i) (%i)'}\n" , rcount/ 2 , LEN[rcount/2],RECTTIME , STOPTIME);
                            }
                            //printf("{'COM':'Settle','name':'Area %i','color':(100,100,255)}\n",rcount);
                        }
                    }
                    if (flag_line == 1){
                        if (TIME > 200*6 ){
                            TIME = 0;
                            flag_line = 0;
                        }
                    }
                    if (rcount == TOTAL*2-1){
                        fns = 1;
                        status = INITIAL;
                    }
                }
            break;


            case AVANZAR:
                if (B_ROJO == 0){
                    fns = 1;
                    status = INITIAL;
                }
                L_VERDE = 1;//TIME % 500 > 250;
                //L_AMARILLO = 1;
                L_ROJO = 0;
                if (TIME3 > 5){
                    TIME3 = 0;
                    EnhancedRead();
                    Line();

                    int speed;
                    double kp , kd;
                    int mod;

                    if (RWM == 0){

                    }
                    /*if (rcount % 2 == 0){
                        speed = VEL[0];
                        kp = VKP[0];                
                        kd = VKD[0];
                    }else{
                        speed = VEL[1];
                        kp = VKP[1];
                        kd = VKD[1];
                    }*/

                    der = line - last;
                    formula = line * kp + der * kd;

                    if (formula > 0){
                        MotorsSpeed(speed - formula , speed);
                    }else{
                        MotorsSpeed(speed , speed + formula);
                    }
                    if (flag_line == 0){
                        if (RSEE or LSEE){
                            flag_line = 1;
                            TIME = 0;
                            L_AMARILLO = !L_AMARILLO;
                            rcount ++ ;
                            //printf("{'COM':'Settle','name':'Area %i','color':(100,100,255)}\n",rcount);
                        }
                    }
                    if (flag_line == 1){
                        if (TIME > 500*6 ){
                            TIME = 0;
                            flag_line = 0;
                        }
                    }
                    if (rcount == 7){
                        fns = 1;
                        status = INITIAL;
                    }
                    if (TIME2 > 1000){
                        //printf("{'COM':'plot','name':'line','value':%i,'color':(0,100,200)}\n",line);
                        //printf("{'COM':'plot','name':'line','value':%i,'color':(0,100,200)}\n",RSEE );
                        //printf("{'COM':'plot','name':'line','value':%i,'color':(100,200,200)}\n",LSEE );
                        TIME2 = 0;
                    }
                    last = line;
                }

            break;
        }
    }
}

