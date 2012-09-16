int ledPin1 = 9;    
int ledPin2 = 10;
int ledPin3 = 11;
int switchPin = 2;
int dialPin = 7;
int switchValue = 0;
int dialValue = 0;
int fadeValue = 0;

void setup()  { 
  pinMode(ledPin1, OUTPUT);
  pinMode(ledPin2, OUTPUT);
  pinMode(ledPin3, OUTPUT);
  pinMode(switchPin, INPUT);
  pinMode(dialPin, INPUT);
  Serial.begin(9600);
} 

void loop()  { 
  switchValue = digitalRead(switchPin);
  dialValue = analogRead(dialPin);
  dialValue=(dialValue*1000+10000)/100;
  Serial.println(switchValue,DEC);
  Serial.println(dialValue,DEC);
  if (switchValue > 0) {
    for(int fadeValue = 0 ; fadeValue <= 255; fadeValue +=5) { 
      analogWrite(ledPin1, fadeValue);
      analogWrite(ledPin2, fadeValue);
      analogWrite(ledPin3, fadeValue);        
      delay(30);                            
    } 
    for(int fadeValue = 255 ; fadeValue >= 0; fadeValue -=5) { 
      analogWrite(ledPin1, fadeValue);
      analogWrite(ledPin2, fadeValue);
      analogWrite(ledPin3, fadeValue);        
      delay(30);                           
    }
  } 
  else {
    fadeValue = random(1,255);
    analogWrite(ledPin1,fadeValue);
    Serial.println(fadeValue);
    Serial.println(dialValue);
    delay(1000);
    fadeValue = random(1,255);
    analogWrite(ledPin2,fadeValue);
    Serial.println(fadeValue);
    Serial.println(dialValue);
    delay(1000);
    fadeValue = random(1,255);
    analogWrite(ledPin3,fadeValue);
    Serial.println(fadeValue);
    Serial.println(dialValue);
    delay(1000);
  }
}


