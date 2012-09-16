int pin2 = 2;
int pin3 = 3;
int pin4 = 4;
int pin5 = 5;
int pin6 = 6;
int pin7 = 7;
int switchPin = 8;
int switchState = 0;
int left = 0;
int right = 1;
int timer = 500;

void setup(){
    pinMode(pin2, OUTPUT);
    pinMode(pin3, OUTPUT);
    pinMode(pin4, OUTPUT);
    pinMode(pin5, OUTPUT);
    pinMode(pin6, OUTPUT);
    pinMode(pin7, OUTPUT);
    pinMode(left, OUTPUT);
    pinMode(right, OUTPUT);
    pinMode(switchPin, INPUT);
}

void loop() {
    if (shitchState == 1) {
       digitalWrite(left, HIGH);
       digitalWrite(right, LOW);
       digitalWrite(pin2, HIGH);
       delay(timer);
       digitalWrite(pin2, LOW);
       delay(timer);

       digitalWrite(right, HIGH);
       digitalWrite(left, LOW);
       digitalWrite(pin3, HIGH);
       delay(timer);
       digitalWrite(pin3, LOW);
       delay(timer);

       digitalWrite(left, HIGH);
       digitalWrite(right, LOW);
       digitalWrite(pin4, HIGH);
       delay(timer);
       digitalWrite(pin4, LOW);
       delay(timer);

       digitalWrite(right, HIGH);
       digitalWrite(left, LOW);
       digitalWrite(pin5, HIGH);
       delay(timer);
       digitalWrite(pin5, LOW);
       delay(timer);

       digitalWrite(left, HIGH);
       digitalWrite(right, LOW);
       digitalWrite(pin6, HIGH);
       delay(timer);
       digitalWrite(pin6, LOW);
       delay(timer);

       digitalWrite(right, HIGH);
       digitalWrite(left, LOW);
       digitalWrite(pin7, HIGH);
       delay(timer);
       digitalWrite(pin7, LOW);
       delay(timer);

       digitalWrite(left, HIGH);
       digitalWrite(right, LOW);
       digitalWrite(pin6, HIGH);
       delay(timer);
       digitalWrite(pin6, LOW);
       delay(timer);

       digitalWrite(right, HIGH);
       digitalWrite(left, LOW);
       digitalWrite(pin5, HIGH);
       delay(timer);
       digitalWrite(pin5, LOW);
       delay(timer);

       digitalWrite(left, HIGH);
       digitalWrite(right, LOW);
       digitalWrite(pin4, HIGH);
       delay(timer);
       digitalWrite(pin4, LOW);
       delay(timer);

       digitalWrite(right, HIGH);
       digitalWrite(left, LOW);
       digitalWrite(pin3, HIGH);
       delay(timer);
       digitalWrite(pin3, LOW);
       delay(timer);
    }
    else {
       digitalWrite(right, HIGH);
       digitalWrite(left, LOW);
       digitalWrite(pin2, LOW);
       digitalWrite(pin3, LOW);
       digitalWrite(pin4, LOW);
       digitalWrite(pin5, LOW);
       digitalWrite(pin6, LOW);
       digitalWrite(pin7, LOW);
    }
}
