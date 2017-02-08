#include <xc.h>
#include "analog.h"

int an[10];

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

