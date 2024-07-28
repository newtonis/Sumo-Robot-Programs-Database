
# 1 "twiddle.c"

# 15 "analog.h"
extern int an[9];

extern int ls[5];

extern int maxs[9] , mins[9];
extern int lp;
extern int calval[9];

void an_init();
void init_cal();
void read_cal();
void EnhancedRead();
void line_cal();

# 22 "config.h"
typedef unsigned int ui;
typedef unsigned char uc;
typedef long long ll;


#pragma config VREGEN = OFF
#pragma config WDT = OFF
#pragma config PLLDIV = 5
#pragma config MCLRE = OFF
#pragma config WDTPS = 32768
#pragma config CCP2MX = OFF
#pragma config PBADEN = OFF
#pragma config CPUDIV = OSC1_PLL2
#pragma config USBDIV = 2
#pragma config FOSC = HSPLL_HS
#pragma config FCMEN = OFF
#pragma config IESO = OFF
#pragma config PWRT = OFF
#pragma config BOR = OFF
#pragma config BORV = 3
#pragma config LPT1OSC= OFF
#pragma config STVREN = ON
#pragma config LVP = OFF
#pragma config ICPRT = OFF
#pragma config XINST = OFF
#pragma config DEBUG = OFF
#pragma config CP0 = OFF, CP1 = OFF, CP2 = OFF, CP3 = OFF
#pragma config CPB = OFF
#pragma config CPD = OFF
#pragma config WRT0 = OFF, WRT1 = OFF, WRT2 = OFF, WRT3 = OFF
#pragma config WRTC = OFF
#pragma config WRTB = OFF
#pragma config WRTD = OFF
#pragma config EBTR0 = OFF, EBTR1 = OFF, EBTR2 = OFF, EBTR3 = OFF
#pragma config EBTRB = OFF

void init_tms();
void init_io();
void MotorsPWM();
void mspeed(int a,int b);

# 17 "timer.h"
extern ll time[10];

# 7 "twiddle.c"
double kp = 4, kd = 100;
double ckp = 0.1 , ckd = 0.1;

int best_err;

enum { CHANGE_KD, CHANGE_KP };

int status = CHANGE_KP;

int intern = 0;

void twidde_start(){
time[2] = 0;
intern = 0;
best_err = lp;
}

void twiddle_update(){
if (intern == 0){
intern = 1;
kd += ckd;
}else if(intern == 1){
if (time[2] > 500){
if (lp > 0 ? (lp) : (-lp) > best_err){
best_err = lp > 0 ? (lp) : (-lp);
ckd *= 1.1;
intern = 0;
}else{
kd -= 2 * ckd;
intern = 2;
}
}
}else if(intern == 2){
if (time[2] > 1000){
if (lp > 0 ? (lp) : (-lp) > best_err){
best_err = lp > 0 ? (lp) : (-lp);
ckd *= 1.05;
}else{
kd += ckd;
ckd *= 0.95;
}
}
}


}
