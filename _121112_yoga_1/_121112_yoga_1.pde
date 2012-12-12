import processing.serial.*;
import cc.arduino.*;

//Serial myPort;

//int[] xvals;
//int arrayindex = 0;

Arduino arduino;

int leftPin = 0;
int rightPin = 0;
int left;
int right;

void setup(){
  size ( 300, 300 );
  background( 255 );
  arduino = new Arduino( this, Arduino.list()[0], 57600 );
  //String portName = Serial.list()[0];
 // myPort = new Serial( this, portName, 9600);
  
  println(Arduino.list());
  
}

void draw(){
  left = arduino.analogRead( leftPin );
  right = arduino.analogRead( rightPin ) ;

  
  
  println( "left:" + left + ", right:" + right);

 
  delay( 1000 );
}
