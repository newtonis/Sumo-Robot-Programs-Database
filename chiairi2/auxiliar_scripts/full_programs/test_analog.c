/** Start test analog input program */


/** Test timer0 increment and led outputs **/

int value;
int selected;
char flag_b1;
char flag_b2;

void init(){
    value = 0;
    selected = 0;
    flag_b1 = 0;
    flag_b2 = 0;
}

void loop(){
    if (counter[0] >= 50){ // every 500 miliseconds (50 time unities, time unity=10ms)
        counter[0] = 0;
        value ++;
        if (value >= 32){ // reset value every 32 increments to avoid overflow
            value = 0;
        }
        printf("Analog value %d: %d \n", selected, an_input[selected]);
    }

    LED_1 = an_input[selected] >= 512 ? 1 : 0;
    LED_2 = an_input[selected] >= 512 ? 1 : 0;
    LED_3 = an_input[selected] >= 512 ? 1 : 0;
    LED_4 = an_input[selected] >= 512 ? 1 : 0;
    LED_5 = an_input[selected] >= 512 ? 1 : 0;

    if (!BUTTON_1 && flag_b1 == 0){
        printf("Button 1 click detected\n");

        selected ++;
        if (selected >= 6){
            selected = 0;
        }
        printf("Selected analog: %d\n", selected);
        flag_b1 = 1;
    }else if(BUTTON_1){
        flag_b1 = 0;
    }

}

/* End program */
