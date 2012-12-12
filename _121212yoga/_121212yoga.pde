import processing.serial.*;

import cc.arduino.*;

Arduino arduino;

int leftPin = 0;
int rightPin = 1;

int leftPalm;
int rightPalm;

color bg = color(252, 251, 240, 30);
color lf = color(249, 218, 212, 170);
color rt = color ( 213, 247, 228, 140); 

void setup() {
  size(1024 , 768);
  noStroke();
  arduino = new Arduino(this, Arduino.list()[0], 57600);
  
  arduino.pinMode( leftPin, Arduino.INPUT );
  arduino.pinMode( rightPin, Arduino.INPUT );
  
    
}

void draw() {
  background(bg);
 
  leftPalm = arduino.analogRead( leftPin ) ;
  rightPalm = arduino.analogRead( rightPin );
  
//  map( leftPalm, 50, 1023, 0, 1023);
//  map( rightPalm, 50, 1023, 0, 1023);
  if (leftPalm <= 50){
    leftPalm = 0;
  } else {
    leftPalm = leftPalm;
  }
  
   if (rightPalm <= 50){
    rightPalm = 0;
  } else {
    rightPalm = rightPalm;
  }
  
  
   
  fill ( lf ); 
  ellipse( width / 3, height / 2, leftPalm / 2, leftPalm / 2 );
  
  fill ( rt ) ;
  ellipse( 2 * width / 3, height / 2, rightPalm / 2, rightPalm / 2 );
 

println( leftPalm );
println( rightPalm );
println("------------");
}
