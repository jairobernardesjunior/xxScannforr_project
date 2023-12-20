//Connect with pin 18 and 19
#include <TinyGPS.h>
//long   lat,lon; // create variable for latitude and longitude object
float lat, lon, alt;
TinyGPS gps; // create gps object

// digital pin 8 has a pushbutton attached to it. Give it a name:
int butGreenPin = 8 ;
byte secondAnt = 0;

// recursos infravermelho
//#include "Adafruit_VL53L0X.h"
//Adafruit_VL53L0X lox = Adafruit_VL53L0X();

// defines pins numbers
const int trigPin = 9;
const int echoPin = 10;
const int ledRedPin = 13;
const int ledBluePin = 12;
const int ledGreenPin = 11;

// variáveis globais
boolean startedDrone = 0;
boolean modoDrone = 0;
boolean preparaDrone = 0;
boolean iniciando = 0;
int qtdeCalibragem = 0;

// cartão sd
#include <SD.h>
File agropec3iTXT;

void LeGravaDistancia();
void LoopGPS();
void TestaGPS();
void TestaDistancia();
void DelayInicial();

//--------------------------------------------------------------
void setup(){
  
  Serial.begin(9600); // connect serial
  Serial.println("The GPS Received Signal:");
  Serial1.begin(9600); // connect gps sensor

  // porta do led verde
  pinMode(ledGreenPin,OUTPUT);
  // porta do led azul
  pinMode(ledBluePin,OUTPUT);
  // porta do led vermelho
  pinMode(ledRedPin,OUTPUT);

  // o parametro e' o pino conectado ao CS do modulo - sd card
  SD.begin(53);    

  // connect gps sensor
  Serial1.begin(9600); 
  
  // make the pushbutton's pin an input: - touch button
  pinMode(butGreenPin, INPUT);  

  pinMode(trigPin, OUTPUT); // Sets the trigPin as an Output
  pinMode(echoPin, INPUT); // Sets the echoPin as an Input

  // Testa gravação sd card ****************
  agropec3iTXT = SD.open("scanforr.txt", FILE_WRITE);
  if (agropec3iTXT)
  {
    agropec3iTXT.println("SETUP **********************************");
    agropec3iTXT.close();

    // Testa sensor ultrasônico ***************
    digitalWrite(trigPin, LOW);
    delayMicroseconds(2);
    
    // Sets the trigPin on HIGH state for 10 micro seconds
    digitalWrite(trigPin, HIGH);
    delayMicroseconds(10);
    digitalWrite(trigPin, LOW);
    
    // Reads the echoPin, returns the sound wave travel time in microseconds
    long duration = pulseIn(echoPin, HIGH);

    Serial.println(duration);
    
    if (duration > 0)
    {
      delay(2000);
      digitalWrite(ledRedPin,HIGH);  
    } //else {Serial.println("erro na leitura do sensor ultrasônico");}
  } //else {Serial.println("erro ao abrir o arquivo agropec3iTXT");}

}

//-------------------------------------------------------------- 
void loop(){

  iniciando = 1;

  if (startedDrone)
  { 
    modoDrone = 0;
    preparaDrone = 0;
    startedDrone = 0;
    digitalWrite(ledGreenPin,LOW);
    digitalWrite(ledBluePin,LOW);    
    delay(5000);
  }  

  if (digitalRead(ledRedPin) == HIGH) 
  {
    if (!modoDrone) {TestaGPS();}
    else
    {
      if (!preparaDrone) {TestaDistancia();}
      else
      {
        if (!startedDrone) {LoopGPS();}
      }
    }
  
    //////////////////////////////////////////////
    // mantêm o loop enquanto o touch button estiver acionado
    while (digitalRead(butGreenPin) == HIGH)
      {DelayInicial();}
  
    //////////////////////////////////////////////
    // mantêm o loop enquanto o touch button estiver desligado e startedDrone
    while (digitalRead(butGreenPin) != HIGH && startedDrone)
      {DelayInicial();}  
  }
  
} 

//*********************
void DelayInicial(){

  if (digitalRead(ledRedPin) == HIGH && iniciando) 
  {

    if (digitalRead(butGreenPin) != HIGH)
    {
      digitalWrite(ledGreenPin,HIGH);
      digitalWrite(ledBluePin,HIGH);
      delay(10000);
      digitalWrite(ledGreenPin,LOW);
      digitalWrite(ledBluePin,LOW); 
    }
    else
    { 
      digitalWrite(ledGreenPin,HIGH);
      digitalWrite(ledBluePin,LOW);
      delay(10000);
      
      agropec3iTXT = SD.open("scanforr.txt", FILE_WRITE);
      if (agropec3iTXT)
      {
        agropec3iTXT.println("CALIBRAGEM **********************************");
        agropec3iTXT.close();
      }

      qtdeCalibragem = 0;
      while (qtdeCalibragem < 10)
      {
        LoopGPS();
      }
                
      agropec3iTXT = SD.open("scanforr.txt", FILE_WRITE);
      if (agropec3iTXT)
      {
        agropec3iTXT.println("FIM CALIBRAGEM **********************************");
        agropec3iTXT.close(); 
      } 
    }
 
    digitalWrite(ledGreenPin,HIGH);
    digitalWrite(ledBluePin,HIGH);
    delay(10000);
    digitalWrite(ledGreenPin,LOW);
    digitalWrite(ledBluePin,LOW);           

    iniciando = 0;
  
    //////////////////////////////////////////////
    // mantêm o loop enquanto o touch button estiver acionado
    while (digitalRead(butGreenPin) == HIGH)
      {LoopGPS();}
  
    //////////////////////////////////////////////
    // mantêm o loop enquanto o touch button estiver desligado e startedDrone
    while (digitalRead(butGreenPin) != HIGH && startedDrone)
      {LoopGPS();}
  }
    
}

//*********************
void TestaGPS(){
  int year, ii;
  byte month, day, hour, minute, second, hundredths;
  unsigned long age;

  while(Serial1.available())
  { // check for gps data
    
    if(gps.encode(Serial1.read()))// encode gps data
    {
      digitalWrite(ledBluePin,HIGH);
      delay(1000);
      digitalWrite(ledBluePin,LOW);

      TestaDistancia();
    }
  }
    
}

//*********************
void TestaDistancia(){

  // Clears the trigPin
  digitalWrite(trigPin, LOW);
  delayMicroseconds(2);
  
  // Sets the trigPin on HIGH state for 10 micro seconds
  digitalWrite(trigPin, HIGH);
  delayMicroseconds(10);
  digitalWrite(trigPin, LOW);
  
  // Reads the echoPin, returns the sound wave travel time in microseconds
  long duration = 0;
  duration = pulseIn(echoPin, HIGH);

  Serial.println("duração: ");
  Serial.println(duration);

  if (duration > 0)
  {
    // Calculating the distance
    int distance = duration*0.034/2;
    
    if (distance > 80) 
    {
      modoDrone = 1;
      digitalWrite(ledGreenPin,HIGH);
    }
    
    if (modoDrone && distance < 50) 
    {
      preparaDrone = 1;
      agropec3iTXT = SD.open("scanforr.txt", FILE_WRITE);
      if (agropec3iTXT)
      {
        agropec3iTXT.println("CALIBRAGEM **********************************");
        agropec3iTXT.close();
      }
    }

    Serial.println("distância: ");
    Serial.println(distance);
  }

}

//*********************
void LoopGPS(){
  int year, ii;
  byte month, day, hour, minute, second, hundredths;
  unsigned long age;

  while(Serial1.available())
  { // check for gps data
    
    if(gps.encode(Serial1.read()))// encode gps data
    { 

      gps.crack_datetime(&year, &month, &day, &hour, &minute, &second, &hundredths, &age);
      if (second != secondAnt)
      {
        
        agropec3iTXT = SD.open("scanforr.txt", FILE_WRITE);
        if (agropec3iTXT)
        {

          digitalWrite(ledGreenPin,HIGH);
          if (!iniciando) {digitalWrite(ledBluePin,HIGH);}
          
          gps.f_get_position(&lat,&lon); // get latitude and longitude
          
          //Latitude
          Serial.print("*");Serial.print(lat, 6);
          agropec3iTXT.print("*");agropec3iTXT.print(lat, 6);
          
          //Longitude
          Serial.print("*");Serial.print(lon,6); 
          agropec3iTXT.print("*");agropec3iTXT.print(lon, 6);
      
          //Altitude
          alt = gps.f_altitude();
          Serial.print("*");Serial.print(alt,2);
          agropec3iTXT.print("*");agropec3iTXT.print(alt, 2);     
        
          //gps.crack_datetime(&year, &month, &day, &hour, &minute, &second, &hundredths, &age);   
          char sz[8];
          sprintf(sz, "%02d/%02d/%02d", day, month, year);        
          Serial.print("*");Serial.print(sz);
          agropec3iTXT.print("*");agropec3iTXT.print(sz);

          //char sz[8];
          sprintf(sz, "%02d:%02d:%02d", hour, minute, second);        
          Serial.print("*");Serial.print(sz);
          agropec3iTXT.print("*");agropec3iTXT.print(sz);          
  
          LeGravaDistancia();
          agropec3iTXT.close();
          qtdeCalibragem = qtdeCalibragem + 1;
          Serial.println(qtdeCalibragem);
  
          digitalWrite(ledGreenPin,LOW);
          digitalWrite(ledBluePin,LOW);
          secondAnt = second;

        }
      }
    }
  }
} 

//*********************
void LeGravaDistancia() {

  // Clears the trigPin
  digitalWrite(trigPin, LOW);
  delayMicroseconds(2);
  
  // Sets the trigPin on HIGH state for 10 micro seconds
  digitalWrite(trigPin, HIGH);
  delayMicroseconds(10);
  digitalWrite(trigPin, LOW);
  
  // Reads the echoPin, returns the sound wave travel time in microseconds
  long duration = 0;
  duration = pulseIn(echoPin, HIGH);

  if (duration > 0)
  {
    digitalWrite(ledRedPin,HIGH);
  } 
  else {digitalWrite(ledRedPin,LOW); Serial.println("erro na leitura do sensor ultrasônico");
  }
  
  // Calculating the distance
  int distance = duration*0.034/2;
  
  // Prints the distance on the Serial Monitor
  Serial.print("*"); Serial.println(distance);
  agropec3iTXT.print("*");agropec3iTXT.println(distance);  

  if (distance > 80) 
  {
    startedDrone = 1;
    agropec3iTXT.println("FIM CALIBRAGEM **********************************");
  }
    
}
