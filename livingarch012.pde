int led0 = 8;
int led1 = 9;
int led2 = 10;
int led3 = 11;
int led4 = 12;
int led5 = 13;
int switchPin = 1;
int switchState = 0;
int flex0 = 2;
int flex1 = 3;
int pauseOn = 3000;
int pauseOff = 1500;

void setup(){
    pinMode(led0, OUTPUT);
    pinMode(led1, OUTPUT);
    pinMode(led2, OUTPUT);
    pinMode(led3, OUTPUT);
    pinMode(led4, OUTPUT);
    pinMode(led5, OUTPUT);
    pinMode(flex0, OUTPUT);
    pinMode(flex1, OUTPUT);
    pinMode(switchPin, INPUT);
}

void loop() {
    switchState = digitalRead(switchPin);
    if (switchState == 1) {
       digitalWrite(flex0, LOW);
       digitalWrite(flex1, HIGH);
       digitalWrite(led1, HIGH);
       delay(pauseOn / 8);
       digitalWrite(led1, LOW);
       delay(pauseOn / 8);
       digitalWrite(led2, HIGH);
       delay(pauseOn / 8);
       digitalWrite(led2, LOW);
       delay(pauseOn / 8);
       digitalWrite(led3, HIGH);
       delay(pauseOn / 8);
       digitalWrite(led3, LOW);
       delay(pauseOn / 8);
       digitalWrite(led4, HIGH);
       delay(pauseOn / 8);
       digitalWrite(led4, LOW);
       delay(pauseOn / 8);
       digitalWrite(led5, HIGH);
       digitalWrite(flex1, LOW);
       delay(pauseOff);
       digitalWrite(flex0, HIGH);
       digitalWrite(led5, LOW);
       delay(pauseOn / 9);
       digitalWrite(led4, HIGH);
       delay(pauseOn / 9);
       digitalWrite(led4, LOW);
       delay(pauseOn / 9);
       digitalWrite(led3, HIGH);
       delay(pauseOn / 9);
       digitalWrite(led3, LOW);
       delay(pauseOn / 9);
       digitalWrite(led2, HIGH);
       delay(pauseOn / 9);
       digitalWrite(led2, LOW);
       delay(pauseOn / 9);
       digitalWrite(led1, HIGH);
       delay(pauseOn / 9);
       digitalWrite(led1, LOW);
       delay(pauseOn / 9);
       digitalWrite(led0, HIGH);
       digitalWrite(flex0, LOW);
       delay(pauseOff);
       digitalWrite(led0, LOW);
    }
    else {
       digitalWrite(flex0, HIGH);
       digitalWrite(flex1, LOW);
       digitalWrite(led0, HIGH);
       digitalWrite(led1, HIGH);
       digitalWrite(led2, HIGH);
       digitalWrite(led3, HIGH);
       digitalWrite(led4, HIGH);
       digitalWrite(led5, HIGH);
    }
}
