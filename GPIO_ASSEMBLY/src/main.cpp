#include "asm.h"



// GPIO 0 OUTPUT
//GIPI 1 INPUT

void setup()
{
    // pinMode(button,INPUT);
    // pinMode(led_pin, OUTPUT);
    //set up OUTPUT via assembly
    confiure_input_GPIO_1();
    confiure_output_GPIO_0();
    while (1)
    {
        read_status_of_GPIO_1();
    }
    
    
    // setup input via assembly
   
}

void loop()
{

    // led_write_1();
    // delay(1000);
    // led_write_0();
    // delay(1000);
    //read_status_of_GPIO_1();
    //led_write_1();
    //state = digitalRead(button);

    // if(state == HIGH)
    // {
    //     digitalWrite(led_pin,HIGH);
    //     //led_write_1();
    // }
    // else{
    //     //led_write_0();
    //     digitalWrite(led_pin,LOW);
        
    // }
   

}