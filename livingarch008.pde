int pin2 = 2;
int pin3 = 3;
int pin4 = 4;
int pin5 = 5;
int pin6 = 6;
int pin7 = 7;
int switchPin = 10;
int switchState = 0;
int flex0 = 8;
int flex1 = 9;
int timer = 250;
int pauseOn = 3000;
int pauseOff = 1000;

void setup(){
    pinMode(pin2, OUTPUT);
    pinMode(pin3, OUTPUT);
    pinMode(pin4, OUTPUT);
    pinMode(pin5, OUTPUT);
    pinMode(pin6, OUTPUT);
    pinMode(pin7, OUTPUT);
    pinMode(flex0, OUTPUT);
    pinMode(flex1, OUTPUT);
    pinMode(switchPin, INPUT);
}

void loop() {
    switchState = digitalRead(switchPin);
    if (switchState == 1) {
       digitalWrite(flex0, LOW);
       digitalWrite(flex1, HIGH);
       digitalWrite(pin2, HIGH);
       delay(pauseOn / 12);
       digitalWrite(pin2, LOW);
       delay(pauseOn / 12);
       digitalWrite(pin3, HIGH);
       delay(pauseOn / 12);
       digitalWrite(pin3, LOW);
       delay(pauseOn / 12);
       digitalWrite(pin4, HIGH);
       delay(pauseOn / 12);
       digitalWrite(pin4, LOW);
       delay(pauseOn / 12);
       digitalWrite(pin5, HIGH);
       delay(pauseOn / 12);
       digitalWrite(pin5, LOW);
       delay(pauseOn / 12);
       digitalWrite(pin6, HIGH);
       delay(pauseOn / 12);
       digitalWrite(pin6, LOW);
       delay(pauseOn / 12);
       digitalWrite(pin7, HIGH);
       digitalWrite(left, LOW);
       delay(pauseOff);
       digitalWrite(right, HIGH);
       digitalWrite(pin7, LOW);
       delay(pauseOn / 12);
       digitalWrite(pin6, HIGH);
       delay(pauseOn / 12);
       digitalWrite(pin6, LOW);
       delay(pauseOn / 12);
       digitalWrite(pin5, HIGH);
       delay(pauseOn / 12);
       digitalWrite(pin5, LOW);
       delay(pauseOn / 12);
       digitalWrite(pin4, HIGH);
       delay(pauseOn / 12);
       digitalWrite(pin4, LOW);
       delay(pauseOn / 12);
       digitalWrite(pin3, HIGH);
       d
       digitalWrite(pin3, LOW);
       delay(timer);
    }
    else {
       digitalWrite(right, HIGH);
       digitalWrite(left, LOW);
       digitalWrite(pin2, HIGH);
       digitalWrite(pin3, HIGH);
       digitalWrite(pin4, HIGH);
       digitalWrite(pin5, HIGH);
       digitalWrite(pin6, HIGH);
       digitalWrite(pin7, HIGH);
    }
}
