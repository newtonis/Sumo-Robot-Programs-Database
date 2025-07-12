
/** Start test status bar program **/


void init(){
    status_enabled = 1; /** Enabled show bar on led control */
}

void loop(){
    int analog_read;
    analog_read = an_input[0];

    status_value = (int) ( (long long) analog_read * 1000 / (long long) 1024 );
}
