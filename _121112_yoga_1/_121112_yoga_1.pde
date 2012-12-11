import processing.serial.*;
import cc.arduino.*;

int[] xvals;
int arrayindex = 0;

Arduino arduino;

int leftPalm = 9;
int rightPalm = 0;
int left, right;

void setup(){
  size ( 300, 300 );
  background( 255 );
  arduino = new Arduino( this, Arduino.list()[1], 57600 );
  
}

void draw(){
  left = arduino.analogRead( leftPalm ) / 4;
  right = arduino.analogRead( rightPalm ) / 4;
  
  
  println( "left:" + left + "right:" + right);
}
