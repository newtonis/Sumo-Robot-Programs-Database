/** Start blink leds program */

/** Test timer0 increment and led outputs **/

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

    LED_1 = (value % 2 < 1) ? 1 : 0;
    LED_2 = (value % 4 < 2) ? 1 : 0;
    LED_3 = (value % 8 < 4) ? 1 : 0;
    LED_4 = (value % 16 < 8) ? 1 : 0;
    LED_5 = (value % 32 < 16) ? 1 : 0;
}

/* End blink leds program */
