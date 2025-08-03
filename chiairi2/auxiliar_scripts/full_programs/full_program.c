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

void init(){
    flag_init = 0;
    current_menu = 0;
    flag_menu_init = 0;
    flag_menu_init_2 = 0;
    configure_mode = 0;
    robot_state = 0;
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
    if (program >= 32){
        program = 0;
    }
    return program;
}

void set_robot_program(unsigned int program){
    if (program >= 32){
        program = 1;
    }
    persisted_data[1] = program;
}

void loop(){
    if (!flag_init && !initial_state){ 
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
                    status_set_mode( 6, 5, 2);
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
                    
                    /** As we enter configurue show leds in reverse order with menu code */
                    status_code = 2;
                    status_set_mode( 6, 5, 8);
                }
                /** Configured program between 0 and 3 **/ 
                if (single_click_evt[1]){
                    status_value ++;
                    if (status_value >= 4){ /** Cap maximum configured program */
                        status_value = 0;
                    }
                }
                if (single_click_evt[0]){
                    if (status_value <= 0){
                        status_value = 3;
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
                    flag_menu_init = 1; /** Show mode 1 animation */
                }
            }
        }else if(current_menu == 3){

        }else if (current_menu == 4){

        }else if (current_menu == 5){

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
            
            flag_menu_init = 0;
        }
    }
}

/** End full program */
