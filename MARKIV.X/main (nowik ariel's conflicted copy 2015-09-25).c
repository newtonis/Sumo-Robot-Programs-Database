#include <xc.h>
#include "conf.h"
#include "ybot.h"


int main(){
    initYBOT();
    while (1){
        UpdateYBOT();
        L_ROJO = IR0;//CLOCK.miliseconds > 500;
        L_AMARILLO = IR1;//V[1] > 500;
        L_VERDE = IR2;// V[0] > 500;
        
        //MotorsSpeed(1000,1000);
    }
}
