#include <xc.h>
#include "conf.h"
#include "ybot.h"


int main(){
    initYBOT();
    while (1){
        L_ROJO = !IR0;
        L_AMARILLO = !IR0;
        L_VERDE = !IR0;
        UpdateYBOT();
    }
}
