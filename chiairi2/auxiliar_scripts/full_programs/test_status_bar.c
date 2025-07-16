
/** Start test status bar program **/

int mode;
int flag_init = 0;

void init(){
    mode = 0;
    flag_init = 0;
}

void loop(){
    if (flag_init == 0 && !initial_state){
        mode = 0;
        flag_init = 1;
        status_set_mode( 4 , 1 , -1); /* led animation of status 4, then go to status 1 */
    }
    
    if (flag_init == 1){
        
        if (double_click_evt[0]){ // Handle double click

            if (status_mode == 1){
                status_set_mode( 4 , 2 , -1); /* led animation of status 4, then go to status 1 */
            }else if (status_mode == 2){
                status_set_mode( 4 , 1 , -1); /* led animation of status 4, then go to status 2 */
            }
            double_click_evt[0] = 0;
        }

        int analog_read;
        analog_read = avg_input[0];

        status_value = (int) ( (long long) analog_read * 1000 / (long long) 1023 );
        if (counter[3] > 100){
            printf("status value: %d\n", status_value);
            counter[3] = 0;
        }
    }

}
 