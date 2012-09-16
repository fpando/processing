
int ledPin = 13;                 // LED connected to digital pin 13
int motionSensorIn = 5;
int flex01 = 7;
int motionSensorVal = 0;
int motionSensorThreshold = 512;


void setup()
{
  Serial.begin(9600);
  pinMode(ledPin, OUTPUT);  
  pinMode(motionSensorIn, INPUT);
  pinMode(flex01, OUTPUT);
  Serial.println("Initializing Motion Sensor...");
  delay(30000);
}

void loop()
{
  motionSensorVal = analogRead(motionSensorIn);

  Serial.print(motionSensorVal);
  if (motionSensorVal >= motionSensorThreshold) {
    digitalWrite(ledPin, HIGH);
    digitalWrite(flex01, HIGH);
  }
  else {
    digitalWrite(ledPin, LOW);
    digitalWrite(flex01, LOW);
  }
  delay(1000);
}
