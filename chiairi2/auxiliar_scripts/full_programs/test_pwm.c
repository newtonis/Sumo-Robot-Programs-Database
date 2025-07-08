
/** Start test pwm program */

char flag_b1;
char flag_b2;
int value;

void init(){
    pwm[0] = 250;
    pwm[1] = 10;
    flag_b1 = 0;
    flag_b2 = 0;
    value = 0;
}

void loop(){
    if (counter[0] >= 1000){ // every 10 seconds (1000 time unities, time unity=10ms)
        counter[0] = 0;
        value ++;
        if (value >= 32){ // reset value every 32 increments to avoid overflow
            value = 0;
        }
        
    }

    LED_1 = !BUTTON_1;
    LED_2 = !BUTTON_1;
    LED_3 = !BUTTON_1; 
    LED_4 = !BUTTON_1;
    LED_5 = !BUTTON_1;

    if (!BUTTON_1 && flag_b1 == 0){

    }else if(BUTTON_1){

    }

    if (!BUTTON_2  && flag_b2 == 0){
        
    }else if (BUTTON_2){

    }
    if (!BUTTON_2 && !BUTTON_1){
    
    }else if (BUTTON_2 || BUTTON_1){
       
    }

}

/* End program */