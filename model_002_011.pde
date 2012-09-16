int led0 = 2;
int led1 = 3;
int switchPin = 8;
int switchState = 0;
int flex0 = 0;
int flex1 = 1;
int timer = 500;

void setup(){
    pinMode(led0, OUTPUT);
    pinMode(led1, OUTPUT);
    pinMode(flex0, OUTPUT);
    pinMode(flex1, OUTPUT);
    pinMode(switchPin, INPUT);
}

void loop() {
    switchState = digitalRead(switchPin);
    if (switchState == 1) {
       digitalWrite(flex0, HIGH);
       digitalWrite(flex1, LOW);
       digitalWrite(led0, HIGH);
       digitalWrite(led1, LOW);
       delay(timer);

       digitalWrite(flex0, LOW);
       digitalWrite(flex1, HIGH);
       digitalWrite(led0, LOW);
       digitalWrite(led1, HIGH);
       delay(timer);

    }
    else {
       digitalWrite(flex0, HIGH);
       digitalWrite(flex1, HIGH);
       digitalWrite(led0, HIGH);
       digitalWrite(led1, HIGH);
    }
}
