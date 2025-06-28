/** Start test eeprom program */


/** Test eeprom writes **/

int value;
int selected;
char flag_b1;
char flag_b2;
char flag_b3;

void clear_eeprom(){
    unsigned int i = 0;
    for (i = 0;i < 50;i++){
        persisted_data[i] = 0;
    }
    write_eeprom();
} 

void init(){
    // uncomment to reset eeprom
    //clear_eeprom();
    value = 0;
    selected = 0;
    flag_b1 = 0;
    flag_b2 = 0;
    flag_b3 = 0;
}

void loop(){
    if (counter[0] >= 1000){ // every 10 seconds (1000 time unities, time unity=10ms)
        counter[0] = 0;
        value ++;
        if (value >= 32){ // reset value every 32 increments to avoid overflow
            value = 0;
        }
        printf("Analog value %d: %d \n", 0, an_input[0]);
    }

    LED_1 = !BUTTON_1;
    LED_2 = !BUTTON_1;
    LED_3 = !BUTTON_1; 
    LED_4 = !BUTTON_1;
    LED_5 = !BUTTON_1;

    if (!BUTTON_1 && flag_b1 == 0){
        printf("Button 1 click detected\n");
        printf("Reading eeprom \n");
        read_eeprom();
        int v;
        for (v = 0;v < 50;v++){
            printf("EEprom register %d:%d\n", v, persisted_data[v]);
        }
        flag_b1 = 1;
    }else if(BUTTON_1){
        flag_b1 = 0;
    }

    if (!BUTTON_2  && flag_b2 == 0){
        printf("Button 2 click detected\n");
        flag_b2 = 1;

        unsigned int value_to_write = an_input[0];
        printf("analog value to write: %d\n", value_to_write);
        printf("eeprom address to write: %d\n", selected);
        persisted_data[selected] = value_to_write;
        write_eeprom();

        selected ++;
        if (selected >= 50){
            selected = 0;
        }

    }else if (BUTTON_2){
        flag_b2 = 0;
    }
    if (!BUTTON_2 && !BUTTON_1){
        printf("Erease eeprom memory \n");
        clear_eeprom();
        flag_b3 = 0;
    }else if (BUTTON_2 || BUTTON_1){
        flag_b3 = 0;
    }

}

/* End program */
