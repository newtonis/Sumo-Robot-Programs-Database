/* Test leds counter and button clicks */

int mode;
int flag_init;
int code_value;

void init(){
    mode = 0;
    flag_init = 0;
    code_value = 0;
}

void loop(){
    if (flag_init == 0 && !initial_state){
        mode = 0;
        flag_init = 1;
        status_set_mode( 4 , 1 , -1); /* led animation of status 4, then go to status 1 */
    }

    if (flag_init == 1){

        if (double_click_evt[0]){ // Handle double click

            status_set_mode( 6 , 4 , 0); /* led animation of status 4, then go to status 1 */
            double_click_evt[0] = 0;

            code_value ++;
            if (code_value >= 32){
                code_value = 1;
            }
            status_code = code_value;
        }

        if (double_click_evt[1]){ // Handle double click

            status_set_mode( 6 , 5 , 0); /* led animation of status 4, then go to status 1 */
            double_click_evt[1] = 0;

            code_value ++;
            if (code_value >= 32){
                code_value = 1;
            }
            status_code = code_value;
        }

    }
    if (status_mode == 0){
        LED_1 = 0;
        LED_2 = 0;
        LED_3 = 0;
        LED_4 = 0;
        LED_5 = 0;
    }
}

/* End est leds counter and button clicks */