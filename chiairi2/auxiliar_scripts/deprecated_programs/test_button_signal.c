/** Start test button signal review program */

/** Test button 1 and button 2 signal composition **/

long long value;
char last_b1 = 1;
char last_b2 = 1;
long long iterations;
long long sum_iterations;
long long amount_cycles;

long long b1_counter; 
char b1_state;
char b1;

void init(){
    value = 0;
    b1_state = 0;
    b1_counter = 0;
    iterations = 0;
    sum_iterations = 0;
    amount_cycles = 0;
}

void loop(){
    iterations ++;

    if (b1_state == 0){
        if (BUTTON_1){ 
            b1 = 0; // there is at least one iteration with the button released
        }
    }else if(b1_state == 1){
        if (!BUTTON_1){
            b1 = 1; // there is at least one iteration with the button pressed
        }
    }

    LED_1 = !b1_state;
    
    LED_3 = !b1_state;
    LED_4 = !b1_state;
    LED_5 = !b1_state;

    
    if (counter[0] >= 1){ // review button status every 10 miliseconds
        counter[0] = 0;

        LED_2 = !LED_2; // reverse led status
        sum_iterations += iterations;
        amount_cycles ++;
        iterations = 0;
        
        value ++;

        if (b1_state == 0){
            if (b1){ // all iterations had the button state as pressed
                b1_counter ++;
                if (b1_counter >= 3){ // at least 30 ms of press time
                    b1_state = 1; // button is now in state pressed
                    b1_counter = 0;
                }
            }else{
                b1 = 1; // set button as pressed, waiting for at least one release iteration
                b1_counter = 0;
            }
        }else if (b1_state == 1){
            if (!b1){ // all iterations had the button state as released
                b1_counter ++;
                if (b1_counter >= 3){ // at least 30 ms of no press time
                    b1_state = 0;
                    b1_counter = 0;
                }
            }else{
                b1 = 0; // set button as released, waiting for at least one press iteration
                b1_counter = 0;
            }
        }
    }

    if (counter[1] >= 1000){ // review every 10000 miliseconds
        /// The printf desincronizes timers a little
        /// 16 iterations per button check
        printf("Sum iterations, Amount cycles: %lld, %lld\n", sum_iterations, amount_cycles);
        printf("Average amount of iterations per button status check: %.4f\n", ( (float)sum_iterations / (float)amount_cycles));

        amount_cycles = 0;
        sum_iterations = 0;

        /// reset both counters to start timer count again
        counter[1] = 0;
        counter[0] = 0;
    }
}

/* End test buttons program */
