int switchPin = 8;
int switchState = 0;
int flex0 = 2;
int flex1 = 3;
int timer = 3000;
int pause = 1000;
int bluePin   = 9;   // Red LED,   connected to digital pin 9
int greenPin = 10;  // Green LED, connected to digital pin 10
int redPin  = 11;  // Blue LED,  connected to digital pin 11

void setup(){
    pinMode(flex0, OUTPUT);
    pinMode(flex1, OUTPUT);
    pinMode(switchPin, INPUT);
    pinMode(bluePin, OUTPUT);  
    pinMode(greenPin, OUTPUT);   
    pinMode(redPin, OUTPUT); 
}

void loop() {
    switchState = digitalRead(switchPin);
    if (switchState == 1) {
       analogWrite(redPin, 1);
       analogWrite(greenPin, 255);
       analogWrite(bluePin, 1);
       digitalWrite(flex0, HIGH);
       digitalWrite(flex1, LOW);
       analogWrite(bluePin, 255);
       delay(timer);
       digitalWrite(flex0, LOW);
       delay(pause);
       digitalWrite(flex0, LOW);
       digitalWrite(flex1, HIGH);
       analogWrite(bluePin, 1);
       delay(timer);
       digitalWrite(flex1, LOW);
       delay(pause);
    }
    else {
       analogWrite(redPin, 255);
       analogWrite(greenPin, 1);
       analogWrite(bluePin, 1);
       digitalWrite(flex0, LOW);
       digitalWrite(flex1, LOW);
       digitalWrite(led0, HIGH);
       digitalWrite(led1, HIGH);
    }
}
