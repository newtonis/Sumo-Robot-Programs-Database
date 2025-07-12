/** Start test button signal review program */

/** Test button 1 simple, double and triple click ***/ 

long long value;
char last_b[5];

long long iterations;
long long sum_iterations;
long long amount_cycles;

long long b_counter[5]; 
char b_state[5];
char press_evt[5];
char release_evt[5];
char b[5];
long long state_counter[5];
char combination_state[5];

char single_click_evt[5];
char double_click_evt[5];
char triple_click_evt[5];

void init(){
    value = 0;
    b_state[0] = 0;
    last_b[0] = 0;

    b_counter[0] = 0;
    state_counter[0] = 0;
    combination_state[0] = 0;
    single_click_evt[0] = 0;
    double_click_evt[0] = 0;
    triple_click_evt[0] = 0;

    iterations = 0;
    sum_iterations = 0;
    amount_cycles = 0;
}

void loop(){
    iterations ++;

    if (b_state[0] == 0){
        if (BUTTON_1){ 
            b[0] = 0; // there is at least one iteration with the button released
        }
    }else if(b_state[0] == 1){
        if (!BUTTON_1){
            b[0] = 1; // there is at least one iteration with the button pressed
        }
    }

    if (press_evt[0]){
        LED_1 = 1;
        press_evt[0] = 0;
    }else{
        LED_1 = 0;
    }

    if (release_evt[0]){
        LED_2 = 1;
        release_evt[0] = 0;
    }else{
        LED_2 = 0;
    }

    if (single_click_evt[0]){
        LED_3 = 1;
        single_click_evt[0] = 0;
    }else{
        LED_3 = 0;
    }

    if (double_click_evt[0]){
        LED_4 = 1;
        double_click_evt[0] = 0;
    }else{
        LED_4 = 0;
    }

    if (triple_click_evt[0]){
        LED_5 = 1;
        triple_click_evt[0] = 0;
    }else{
        LED_5 = 0;
    }
    
    if (counter[0] >= 1){ // review button status every 10 miliseconds
        counter[0] = 0;

        sum_iterations += iterations;
        amount_cycles ++;
        iterations = 0;
        
        value ++;

        /// Layer 1 -> glitch filter
        if (b_state[0] == 0){
            if (b[0]){ // all iterations had the button state as pressed
                b_counter[0] ++;
                if (b_counter[0] >= 3){ // at least 30 ms of press time (recomended minimum press duration: 60 ms)
                    b_state[0] = 1; // button is now in state pressed
                    b_counter[0] = 0;
                }
            }else{
                b[0] = 1; // set button as pressed, waiting for at least one release iteration
                b_counter[0] = 0;
            }
        }else if (b_state[0] == 1){
            if (!b[0]){ // all iterations had the button state as released
                b_counter[0] ++;
                if (b_counter[0] >= 3){ // at least 30 ms of no press time (recomended minimum release duration: 60 ms)
                    b_state[0] = 0;
                    b_counter[0] = 0;
                }
            }else{
                b[0] = 0; // set button as released, waiting for at least one press iteration
                b_counter[0] = 0;
            }
        }

        /// Layer 2 -> press and release event detection
        char click_evt = 0;

        if (last_b[0] == 0 && b_state[0] == 1){
            /// button 1 is now pressed
            press_evt[0] ++; 
            click_evt = 1;

            last_b[0] = 1;
        }else if (last_b[0] == 1 && b_state[0] == 0){
            /// button 1 is now released
            release_evt[0] ++;

            last_b[0] = 0;
        }

        /// Layer 3 -> simple, double and triple click detection

        if (combination_state[0] == 0){
            /// no recorded previous clicks
            if (click_evt){ /// click evt
                state_counter[0] = 0; /// reset click counter
                combination_state[0] = 1;
            }

        }else if (combination_state[0] > 0){ 
            if (click_evt){ // click evt
                combination_state[0] ++;
            }
            if (state_counter[0] >= 50){ /// 500 miliseconds time since first click

                /// generate single, double or triple click event
                if (combination_state[0] == 1){
                    single_click_evt[0] ++;
                }else if (combination_state[0] == 2){
                    double_click_evt[0] ++;
                }else if(combination_state[0] == 3){
                    triple_click_evt[0] ++;
                }
                combination_state[0] = 0;
            }
            state_counter[0] ++;
        }
    }

    if (counter[1] >= 1000){ // review every 10000 miliseconds
        /// The printf desincronizes timers a little
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
