#include <xc.h>
#include "conf.h"
#include "ybot.h"

enum {INICIAL , ESPERA, GIRO , ATACK , ATRAS , ROUND , FRONT};
int estado;
int last;

#define TH 500
#define BLANCOA V[0]>150
#define BLANCOB V[1]>150

int main(){
    initYBOT();
    estado = INICIAL;

    last = 0;
    while (1){
        UpdateYBOT();
        switch (estado){
            case INICIAL:
                L_ROJO = !IR0;
                L_AMARILLO = !IR2;
                L_VERDE = !IR1;
                MotorsSpeed(0,0);
                if (1){//B_ROJO == 0){
                    estado = ESPERA;
                    ResetCounter();
                }
                break;
            case ESPERA:
                L_ROJO = TIME % 500 > 250;
                L_VERDE = TIME %500 > 250;
                L_AMARILLO = TIME % 500 < 250;
                ////if (TIME % 2000 < 1000){
                    //MotorsSpeed(1000,1000);
                //}else{
                //    MotorsSpeed(-1000,-1000);
                //}
                if (TIME > 5000){
                    estado = GIRO;
                }
                break;
            case GIRO:
                //MotorsSpeed(1000,200);
                L_ROJO = !IR2;
                L_AMARILLO = !IR1;
                L_VERDE = !IR0;
                if ((!IR2) or (!IR1)){
                    MotorsSpeed(-1000,-1000);
                }else{
                    MotorsSpeed(-1000,-200); //D,I
                }
                if (BLANCOB){
                    SetStatus(GIROESCAPE);
                    giro = 0;
                }
                if (BLANCOA){
                    SetStatus(GIROESCAPE);
                    giro = 1;
                }
                break;
            case GIROESCAPE:
                MotorsSpeed(giro == 0 ? -1000 : -200, giro == 1 : -200 : -1000);
                if (TIME > 400){
                    SetStatus(FRONT);
                }
            break;
     
            case ROUND:
                MotorsSpeed(-500,500);
                if (TIME > 400){
                    estado = FRONT;
                    TIME = 0;
                }
                break;
                case FRONT:
                    MotorsSpeed(-1000,-1000);
                    if (TIME >800){
                        estado = GIRO;
                        last = last == 0 ? 1 : 0;
                    }
                    break;

        }
        
        
        //MotorsSpeed(1000,1000);
    }
}
