/** Start test wixel program */

/** Test wixel functionality **/

int value;
char flag_b1;
char flag_b2;

void init(){
    value = 0;
    flag_b1 = 0;
    flag_b2 = 0;
}

void loop(){
    if (counter[0] > 50){ // every 500 miliseconds
        counter[0] = 0;
        value ++;
        if (value >= 32){ // reset value every 32 increments to avoid overflow
            value = 0;
        }
        printf("Value: %d\n", value);
    }

    
    LED_1 = (value % 2 < 1) ? 1 : 0;
    LED_2 = (value % 4 < 2) ? 1 : 0;
    LED_3 = (value % 8 < 4) ? 1 : 0;
    LED_4 = (value % 16 < 8) ? 1 : 0;
    LED_5 = (value % 32 < 16) ? 1 : 0;

    if (!BUTTON_1 && flag_b1 == 0){
        printf("Button 1 click detected\n");
        flag_b1 = 1;
    }else if(BUTTON_1){
        flag_b1 = 0;
    }

    if (!BUTTON_2  && flag_b2 == 0){
         printf("Button 2 click detected\n");
        flag_b2 = 1;
    }else if (BUTTON_2){
        flag_b2 = 0;
    }
}

/* End program */
