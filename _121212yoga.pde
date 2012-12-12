import processing.serial.*;

import cc.arduino.*;

Arduino arduino;

int leftPin = 0;
int rightPin =1;

color off = color(4, 79, 111);
color on = color(84, 145, 158);

void setup() {
  size(470, 280);
  arduino = new Arduino(this, Arduino.list()[0], 57600);
  
  arduino.pinMode( leftPin, Arduino.INPUT );
  arduino.pinMode( rightPin, Arduino.INPUT );
  
//  for (int i = 0; i <= 13; i++)
//    arduino.pinMode(i, Arduino.INPUT);


    
    
    
}

void draw() {
  background(off);
  stroke(on);

  
//  for (int i = 0; i <= 5; i++) {
//    ellipse(280 + i * 30, 240, arduino.analogRead(i) / 16, arduino.analogRead(i) / 16);
//  }

println( arduino.analogRead( leftPin ) );
println( arduino.analogRead( rightPin));
println("------------");
}
