/* Motor integrated tests */

/* This programs test: pwm, buttons, eeprom, analog input */

int flag_init;

int motor_a_speed_read_value;
int motor_b_speed_read_value;

int mode;
int mode_config;

void init(){
    flag_init = 0;
    motor_a_speed_read_value = 0;
    motor_b_speed_read_value = 0;
    mode = 0;
    mode_config = 1;
}

void read_values(){
    int a_sign, b_sign;
    a_sign = (persisted_data[13] == 0 ? 1 : -1);
    b_sign = (persisted_data[14] == 0 ? 1 : -1);

    motor_a_speed_read_value = (a_sign) * persisted_data[15];
    motor_b_speed_read_value = (b_sign) * persisted_data[16];
}

void loop(){
    if (flag_init == 0 && !initial_state){
        flag_init = 1;
        /** Read the eeprom values for motors **/
        read_eeprom();
        
        read_values();

        status_set_mode( 4 , 0 , -1); /* led animation of status 4, then go to status 0 */

        printf("motor a speed: %d\n", motor_a_speed_read_value);
        printf("motor b speed: %d\n", motor_b_speed_read_value);
    }
    if (flag_init == 1){
        if (mode_config == 1){
            if (mode == 0 && status_mode == 0){ // when initial led animation ends
                mode = 1; /* Show motor A */
                status_code = 1;
                if (motor_a_speed_read_value >= 0){
                    status_set_mode( 6, 4, 1);
                }else if (motor_a_speed_read_value <= 0){
                    status_set_mode( 6, 5, 1);
                }
            }else if(mode == 1){
                if (motor_a_speed_read_value >= 0){
                    status_value = motor_a_speed_read_value;
                }else{
                    status_value = -motor_a_speed_read_value;
                }
                if (single_click_evt[0]){
                    mode = 2;
                    status_code = 2;
                    if (motor_b_speed_read_value >= 0){
                        status_set_mode( 6, 4, 1);
                    }else if (motor_b_speed_read_value <= 0){
                        status_set_mode( 6, 5, 1);
                    }
                    single_click_evt[0] = 0;
                }
                if (double_click_evt[0]){ /* change the value */
                    double_click_evt[0] = 0;
                    mode = 3;
                    status_set_mode( 2, -1, -1); /* show status bar with intermitency */
                }
            }else if(mode == 3){
                int analog_read;
                analog_read = avg_input[0];

                status_value = (int) ( (long long) analog_read * 1000 / (long long) 1023 );

                if (single_click_evt[0]){
                    /* set speed forward */
                    single_click_evt[0] = 0;

                    persisted_data[13] = 0; /* positive */
                    persisted_data[15] = status_value;
                    write_eeprom();
                    read_values();

                    printf("Write eeprom motor a speed: %d\n", status_value);
                    mode = 0;
                    status_mode = 0;
                }
                if (double_click_evt[0]){
                    /* set speed backwards */
                    double_click_evt[0] = 0;

                    persisted_data[13] = 1; /* negative */
                    persisted_data[15] = status_value;
                    write_eeprom();
                    read_values();

                    printf("Write eeprom motor a speed: %d\n", -status_value);
                    mode = 0;
                    status_mode = 0;
                }

            }else if(mode == 2){
                if (motor_b_speed_read_value >= 0){
                    status_value = motor_b_speed_read_value;
                }else{
                    status_value = -motor_b_speed_read_value;
                }
                if (single_click_evt[0]){
                    mode = 1;
                    status_code = 1;
                    if (motor_a_speed_read_value >= 0){
                        status_set_mode( 6, 4, 1);
                    }else if (motor_a_speed_read_value <= 0){
                        status_set_mode( 6, 5, 1);
                    }
                    single_click_evt[0] = 0;
                }
                if (double_click_evt[0]){ /* change the value */
                    double_click_evt[0] = 0;
                    mode = 4;
                    status_set_mode( 2, -1, -1); /* show status bar with intermitency */
                }
            }else if(mode == 4){
                int analog_read;
                analog_read = avg_input[0];

                status_value = (int) ( (long long) analog_read * 1000 / (long long) 1023 );

                if (single_click_evt[0]){
                    /* set speed forward */
                    single_click_evt[0] = 0;

                    persisted_data[14] = 0; /* positive */
                    persisted_data[16] = status_value;
                    write_eeprom();
                    read_values();

                    printf("Write eeprom motor b speed: %d\n", status_value);
                    mode = 0;
                    status_mode = 0;
                }
                if (double_click_evt[0]){
                    /* set speed backwards */
                    double_click_evt[0] = 0;

                    persisted_data[14] = 1; /* negative */
                    persisted_data[16] = status_value;
                    write_eeprom();
                    read_values();

                    printf("Write eeprom motor b speed: %d\n", -status_value);
                    mode = 0;
                    status_mode = 0;
                }
            }
            /* No pwm at this mode */
            pwm[0] = 0;
            pwm[1] = 0;
            
            if (double_click_evt[1]){
                double_click_evt[1] = 0;
                /*** Set motors to run at configured speeds*/
                status_set_mode(3, -1, -1);
                mode_config = 2;
            }
        }else if (mode_config == 2){
            pwm[0] = (long long) motor_a_speed_read_value * (600) / (1000);
            pwm[1] = (long long) motor_b_speed_read_value * (600) / (1000);

            if (double_click_evt[1]){
                double_click_evt[1] = 0;
                /*** Start to configure motors speed again */
                mode_config = 1;
                mode = 0;
                status_mode = 0;
            }
        }
    }
}

/* End motor integrated tests */