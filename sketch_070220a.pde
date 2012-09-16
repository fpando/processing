int ledPin = 13;                

int motionSensorIn = 0;

int flex01 = 7;

int motionSensorVal = 0;

int motionSensorThreshold = 512;

int startUpCounter = 0;



void setup()

{

  pinMode(ledPin, OUTPUT);  

  pinMode(motionSensorIn, INPUT);

  pinMode(flex01, OUTPUT);

  Serial.begin(9600);

  Serial.println("Initializing Motion Sensor...");

  while(startUpCounter < 30) {

    delay(1000);

    Serial.print(startUpCounter);

    startUpCounter++;

  }

  Serial.println("InitComplete!\n");

}



void loop()

{

  motionSensorVal = analogRead(motionSensorIn);

  

  if (motionSensorVal >= motionSensorThreshold) {

    digitalWrite(ledPin, HIGH);

    digitalWrite(flex01, HIGH);

    Serial.print("\nMOTION: ");

    Serial.println(motionSensorVal, DEC);

  }

  else {

    digitalWrite(ledPin, LOW);

    digitalWrite(flex01, LOW);

    Serial.print(motionSensorVal, DEC);

  }

  delay(2000);

}

