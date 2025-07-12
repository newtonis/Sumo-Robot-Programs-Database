
/** Start test button signal review program */

long long amount_cycles;
long long sum_iterations;

void init(){
    amount_cycles = 0;
    sum_iterations = 0;
}

void loop(){
    int button_id;
    if (an_input[0] > 500){
        button_id = 1;
    }else{
        button_id = 0;
    }
            
    if (press_evt[button_id]){
        LED_1 = !LED_1;
        press_evt[button_id] = 0;
    }

   /*if (release_evt[0]){
        LED_2 = !LED_2;
        release_evt[0] = 0;
    }*/
    LED_2 = initial_state;

    if (single_click_evt[button_id]){
        LED_3 = !LED_3;
        single_click_evt[button_id] = 0;
    }

    if (double_click_evt[button_id]){
        LED_4 = !LED_4;
        double_click_evt[button_id] = 0;
    }

    if (triple_click_evt[button_id]){
        LED_5 = !LED_5;
        triple_click_evt[button_id] = 0;
    }

    if (counter[1] >= 1000){ // review every 10000 miliseconds
        /// The printf desincronizes timers a little
        //printf("Sum iterations, Amount cycles: %lld, %lld\n", sum_iterations, amount_cycles);
        //printf("Average amount of iterations per button status check: %.4f\n", ( (float)sum_iterations / (float)amount_cycles));

        amount_cycles = 0;
        sum_iterations = 0;

        /// reset both counters to start timer count again
        counter[1] = 0;
        counter[0] = 0;
    }
}

/* End test buttons program */