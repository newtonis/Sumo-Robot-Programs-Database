/** Start test buttons program */

/** Test button 1 and button 2 functionality **/

int value;

void init(){
    value = 0;
}

void loop(){
    if (counter[0] > 50){ // every 500 miliseconds
        counter[0] = 0;
        value ++;
        if (value > 32){ // reset value every 32 increments to avoid overflow
            value = 0;
        }
    }

    LED_1 = !BUTTON_1;
    LED_2 = !BUTTON_2;
    LED_3 = !BUTTON_1;
    LED_4 = !BUTTON_2;
    LED_5 = !BUTTON_1;
}

/* End test buttons program */
