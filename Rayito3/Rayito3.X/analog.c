#include <xc.h>
#include "config.h"
#include "analog.h"

int an[9];

int cs[2] = { 0, 1 }; // current sensing
int ls[5] = { 8 , 7 , 6 , 4 , 2 }; // line sensing
int es[2] = { 3 , 5 }; // extreme sensing
int calval[9];

int maxs[9] , mins[9]; /// max and min sensing

int lp; // line position

void an_init(){
    ADCON1bits.VCFG = 0;
    ADCON1bits.PCFG = 0x06;
    
    ADCON2bits.ADFM=0;
    ADCON2bits.ACQT=7; //20tads
    ADCON2bits.ADCS=6; //fosc/64
    ADCON0bits.CHS=0;
    ADCON0bits.GODONE=0;
    ADCON0bits.ADON=1;
    
}

void EnhancedRead(){
    unsigned char i;
    unsigned int aux;
    for (i=0;i<9;i++){
        ADCON0bits.CHS=i;
        ADCON0bits.GODONE=1;
        while (ADCON0bits.GODONE==1) {}
        aux=ADRESH*4;
        aux=aux+ADRESL/64;
        an[i]=aux;
    }
}   
void init_cal(){
    int i; 
    
    for (i = 0;i < 9;i++) maxs[i] = 0;
    for (i = 0;i < 9;i++) mins[i] = 1024;
}
void read_cal(){
    int i; 
    
    for (i = 0;i < 5;i++) maxs[ls[i]] = maxv(maxs[ls[i]] , an[ls[i]]);
    for (i = 0;i < 5;i++) mins[ls[i]] = minv(mins[ls[i]] , an[ls[i]]);
    
    for (i = 0;i < 2;i++) maxs[es[i]] = maxv(maxs[es[i]],an[es[i]]);
    for (i = 0;i < 2;i++) mins[es[i]] = minv(mins[es[i]],an[es[i]]);
}

void line_cal(){
    ll a = 0;
    ll b = 0;
    
    int i , j , aux;
    ll value;
    int ok = 0;
    
    for (i = 0;i < 5;i++){
        /*** set in range ***/
        j = ls[i];
        aux = an[j];
        aux = maxv(aux,mins[j]);
        aux = minv(aux,maxs[j]);
        /*** sacale to calibration*/
        aux -= mins[j];
        
        value = 1000 - (ll)(aux) * (ll)1000 / (ll)(maxs[j] - mins[j]);
        
        calval[j] = value;
        
        if (value >= 300) ok = 1;
        
        a += value * (ll)i * 100;
        b += value;
        
    }
    if (ok == 1){
        lp = a / b - 200;
    }else{
        lp = lp > 0 ? 190 : -190;
    }

}

