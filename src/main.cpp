#include <Arduino.h>
#define button 1    // GPIO 1 as input
#define led 0       // GPIO 2 as ouput
void setup()
{
    pinMode(button,INPUT);
    pinMode(led,OUTPUT);

}

int state = 0;

void loop()
{
    state = digitalRead(button);

    if(state == true){
        digitalWrite(led,HIGH);
    }
    else{
        digitalWrite(led,LOW);
    }





}