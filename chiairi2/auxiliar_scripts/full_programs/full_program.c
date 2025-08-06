/*** Start robot routines *** /

/** Routine 1 **/

void init1(int speed){

}

void loop1(int speed){
    LED_1 = 1;
    LED_2 = 0;
    LED_3 = 0;
    LED_4 = 0;
    LED_5 = 0;
}

/** Routine 2 **/

void init2(int speed){

}

void loop2(int speed){
    LED_1 = 0;
    LED_2 = 1;
    LED_3 = 0;
    LED_4 = 0;
    LED_5 = 0;
}

/** Routine 3 **/

void init3(int speed){

}

void loop3(int speed){
    LED_1 = 1;
    LED_2 = 1;
    LED_3 = 0;
    LED_4 = 0;
    LED_5 = 0;
}

/** Routine 4 **/

void init4(int speed){

}

void loop4(int speed){
    LED_1 = 0;
    LED_2 = 0;
    LED_3 = 1;
    LED_4 = 0;
    LED_5 = 0;
}

void (*init_routines[4]) (int) = {init1, init2, init3, init4};
void (*loop_routines[4]) (int) = {loop1, loop2, loop3, loop4};

/*** End robot routines *** /


/** Start full program */

/** 
    Eeprom values: 
        -   Motor speed: persisted_data[0] 
        -   Configured program: persisted_data[1]   
    Menus:
        -   Configure robot speed
        -   Configure robot program (1-32)
        -   Show sensor status
        -   Show CNY1
        -   Show CNY2
**/

int flag_init;
int current_menu;
int flag_menu_init;
int flag_menu_init_2;
int configure_mode;
int robot_state;
int program_count;
int flag_press;
int speed_aux, program_aux;

void init(){
    flag_init = 0;
    current_menu = 0;
    flag_menu_init = 0;
    flag_menu_init_2 = 0;
    configure_mode = 0;
    robot_state = 0;
    program_count = 4;
    flag_press = 0;
    speed_aux = 0;
    program_aux = 0;
}

unsigned int get_motor_speed(){
    unsigned int speed;
    speed = persisted_data[0];
    if (speed >= 1000){
        speed = 1000;
    }
    return speed;
}

void set_motor_speed(unsigned int speed){
    if (speed >= 1000){
        speed = 1000;
    }
    persisted_data[0] = speed;
}

unsigned int get_robot_program(){
    unsigned int program;
    program = persisted_data[1];
    if (program >= program_count+1 || program == 0){
        program = 1;
    }
    return program;
}

void set_robot_program(unsigned int program){
    if (program >= program_count+1 || program == 0){
        program = 1;
    }
    persisted_data[1] = program;
}

void loop(){
    if (!flag_init && !initial_state){ 
        pwm[0] = 0;
        pwm[1] = 0;

        flag_init = 1;

        /** wait until inital state ends */
    
        /** Read the eeprom values **/
        read_eeprom();
        /* led animation of status 4, then go to status 0 */
        status_set_mode( 4 , 0 , -1); 

    }else if (flag_init == 1 && robot_state == 0){ 
        if (status_mode == 0){
            /** we are in initial state and led initial sequence is completed **/

            /** Enter Menu 1 (Configure motor speed) 
                -   Show the current motor speed
                -   Show menu code 1
            **/
            robot_state = 1; /** We are in menu mode **/
            current_menu = 1; /** We enter menu 1 **/
            flag_menu_init = 1;
        }
    }else if (robot_state == 1){ 
        /** We are in the Robot Menu **/

        if (flag_menu_init){
            /** Set menu code animation **/
            flag_menu_init = 0;
            flag_menu_init_2 = 1; // set flag for inital menu animation
            status_code = current_menu;
            status_set_mode( 6, 4, 0);
        }
        
        
        if (current_menu == 1){
            /** Configure motor speed **/
            if (configure_mode == 0){
                if (flag_menu_init_2){
                    if (status_mode == 0){
                        flag_menu_init_2 = 0;
                        /** When animation ends how the motor speed value **/
                        status_value = get_motor_speed();
                        status_set_mode( 1, 0, -1);
                    }
                }

                if (double_click_evt[0]){
                    /** Go to configure mode **/
                    double_click_evt[0] = 0;
                    configure_mode = 1;
                    flag_menu_init_2 = 1;
                }
            
            }else if (configure_mode == 1){
                if (flag_menu_init_2){
                    flag_menu_init_2 = 0;
                    
                    /** As we enter configurue show leds in reverse order with menu code */
                    status_code = 1;
                    status_set_mode( 2, 0, -1);
                }

                status_value = (long long) avg_input[0] * (long long) 1024 / (long long) 1000;

                if (double_click_evt[0]){
                    /** Set the motor speed configuration on eeprom **/
                    set_motor_speed(status_value);
                    write_eeprom();

                    /** Go to common mode **/
                    double_click_evt[0] = 0;
                    configure_mode = 0;
                    flag_menu_init = 1; /** Show mode 1 animation */
                }
            }
            
            
        }else if (current_menu == 2){
            /** Configure the robot default program **/
            if (configure_mode == 0){
                if (flag_menu_init_2){
                    if (status_mode == 0){
                        flag_menu_init_2 = 0;
                        /** When animation ends show the robot program **/
                        status_value = get_robot_program();
                        status_set_mode( 7, 0, -1);
                    }
                }

                if (double_click_evt[0]){
                    /** Go to configure mode **/
                    double_click_evt[0] = 0;
                    configure_mode = 1;
                    flag_menu_init_2 = 1;
                }
            
            }else if (configure_mode == 1){
                if (flag_menu_init_2){
                    flag_menu_init_2 = 0;
                    
                    status_code = 2;
                    status_set_mode( 8, 0, -1);
                }
                /** Configured program between 0 and 3 **/ 
                if (single_click_evt[1]){
                    single_click_evt[1] = 0;
                    status_value ++;
                    if (status_value >= program_count+1){ /** Cap maximum configured program */
                        status_value = 1;
                    }
                }
                if (single_click_evt[0]){
                    single_click_evt[0] = 0;
                    if (status_value <= 1){
                        status_value = program_count;
                    }else{
                        status_value --;
                    }
                }
                if (double_click_evt[0]){
                    /** Set the program configuration on eeprom **/
                    set_robot_program(status_value);
                    write_eeprom();

                    /** Go to common mode **/
                    double_click_evt[0] = 0;

                    configure_mode = 0;
                    flag_menu_init = 1; /** Show mode 2 animation */
                }
            }
        }else if(current_menu == 3){
            if (status_mode == 0){
                LED_1 = S1;
                LED_2 = S2;
                LED_3 = S3;
                LED_4 = S4;
                LED_5 = S5;
            }
        }else if (current_menu == 4){
            if (flag_menu_init_2){
                if (status_mode == 0){
                    flag_menu_init_2 = 0;
                    /** When animation ends how the motor speed value **/
                    status_value = (long long) avg_input[2] * (long long) 1024 / (long long) 1000;
                    status_set_mode( 1, 0, -1);
                }
            }else{
                status_value = (long long) avg_input[2] * (long long) 1024 / (long long) 1000;
            }
        }else if (current_menu == 5){
           if (flag_menu_init_2){
                if (status_mode == 0){
                    flag_menu_init_2 = 0;
                    /** When animation ends how the motor speed value **/
                    status_value = (long long) avg_input[3] * (long long) 1024 / (long long) 1000;
                    status_set_mode( 1, 0, -1);
                }
            }else{
                status_value = (long long) avg_input[3] * (long long) 1024 / (long long) 1000;
            }
        }else{
            if (flag_menu_init_2){
                if (status_mode == 0){ 
                    flag_menu_init_2 = 0;
                    /** When animation ends show all leds in 1 state **/
                    LED_1 = 1;
                    LED_2 = 1;
                    LED_3 = 1;
                    LED_4 = 1;
                    LED_5 = 1;
                }
            }
        }

        /** Sequence to change menu (only if there is not configure mode) */
        if (configure_mode == 0){
            if (single_click_evt[0]){ 
                single_click_evt[0] = 0;
                /** Go to next menu **/
                current_menu ++;
                if (current_menu >= 6){
                    current_menu = 1;
                }
                flag_menu_init = 1;
            }
            if (single_click_evt[1]){
                single_click_evt[1] = 0;
                /** Go to previous menu **/
                current_menu --;
                if (current_menu <= 0){
                    current_menu = 5;
                }
                flag_menu_init = 1;
            }
            if (double_click_evt[1]){
                /** Run the robot **/
                robot_state = 2;
                flag_menu_init = 1;
            }
        }
    }else if (robot_state == 2){
        if (flag_menu_init){
            counter[3] = 0;
            counter[4] = 0;
            flag_menu_init = 0;
            flag_press = 0;
        }else{
            if (flag_press == 0){
                status_mode = 0;
                LED_1 = counter[4] % 20 >= 10;
                LED_2 = counter[4] % 20 < 10;
                LED_3 = counter[4] % 20 >= 10;
                LED_4 = counter[4] % 20 < 10;
                LED_5 = counter[4] % 20 >= 10;

                if (counter[4] >= 200){   // 2 second protection
                    flag_press = 1;
                    counter[4] = 0;
                    counter[3] = 0;
                    press_evt[0] = 0;
                    release_evt[0] = 0;
                    press_evt[1] = 0;
                    release_evt[1] = 0;

                   

                }
            }else if (flag_press == 1){
                if (counter[3] <= 100){ // for 1 second
                    status_mode = 0;
                    LED_1 = counter[3] % 10 >= 5;
                    LED_2 = counter[3] % 10 < 5;
                    LED_3 = counter[3] % 10 >= 5;
                    LED_4 = counter[3] % 10 < 5;
                    LED_5 = counter[3] % 10 >= 5;
                }else if(counter[3] <= 200){
                    // show motor speed
                    status_mode = 1;
                    status_value = get_motor_speed();
                }else if(counter[3] <= 300){
                    status_mode = 0;
                    LED_1 = counter[3] % 10 >= 5;
                    LED_2 = counter[3] % 10 < 5;
                    LED_3 = counter[3] % 10 >= 5;
                    LED_4 = counter[3] % 10 < 5;
                    LED_5 = counter[3] % 10 >= 5;
                }else if (counter[3] <= 400){
                    // show robot program
                    status_mode = 7;
                    status_value = get_robot_program();
                }else{
                    counter[3] = 0;
                }
                if (press_evt[0]){
                    flag_press = 2;
                    press_evt[0] = 0;
                }
                if (press_evt[1]){
                    flag_press = 2;
                    press_evt[1] = 0;
                }
            }else if (flag_press == 2){
                status_mode = 0;
                LED_1 = 1;
                LED_2 = 1;
                LED_3 = 1;
                LED_4 = 1;
                LED_5 = 1;
                if (release_evt[0]){
                    release_evt[0] = 0;
                    robot_state = 3;
                    flag_menu_init = 1;
                }
                if (release_evt[1]){
                    release_evt[1] = 0;
                    robot_state = 3;
                    flag_menu_init = 1;
                }
            }
        }
        
    }else if (robot_state == 3){ // ** count 5 seconds and start program
        if (flag_menu_init){
            counter[3] = 0;
            flag_menu_init = 0;
        }
        status_mode = 0;
        LED_1 = counter[3] >= 100;
        LED_2 = counter[3] >= 200;
        LED_3 = counter[3] >= 300;
        LED_4 = counter[3] >= 400;
        LED_5 = counter[3] >= 500;

        if (counter[3] >= 500){ // After 5 seconds
            robot_state = 4;
            flag_menu_init = 1;
        }
    }else if (robot_state == 4){
        if (flag_menu_init){
            speed_aux = get_motor_speed();
            program_aux = get_robot_program();

            init_routines[program_aux-1](speed_aux);
            flag_menu_init = 0;
        }
        loop_routines[program_aux-1](speed_aux);
    }
}

/** End full program */
