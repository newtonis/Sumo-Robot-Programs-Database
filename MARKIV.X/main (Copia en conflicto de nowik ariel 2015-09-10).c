#include <xc.h>
#include "conf.h"
#include "ybot.h"

#define PISOA PISO[A]<=500
#define PISOB PISO[B]<=500

int main(){
    initYBOT();
    while (1){
        UpdateYBOT();
        L_ROJO = 0;
        L_VERDE = 0;
        L_AMARILLO = 0;


    }
}
