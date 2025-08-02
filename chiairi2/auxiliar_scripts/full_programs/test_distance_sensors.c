/** Start distance sensors program */


int value;

void init(){
    value = 0;
}

void loop(){
    if (counter[0] >= 50){ // every 500 miliseconds (50 time unities, time unity=10ms)
        counter[0] = 0;
        value ++;
        if (value >= 32){ // reset value every 32 increments to avoid overflow
            value = 0;
        }
    }

    LED_1 = S1;
    LED_2 = S2;
    LED_3 = S3;
    LED_4 = S4;
    LED_5 = S5;
}

/** End distance sensors program */
