int left_Pin = A1; //analog pin 0
int right_Pin = A3;

void setup(){
  Serial.begin(9600);
}

void loop(){
  int leftReading = analogRead(left_Pin ); 
  int rightReading = analogRead( right_Pin );

  Serial.println(leftReading);
  Serial.println(rightReading);
  Serial.println("--------------");
  
  delay(250); //just here to slow down the output for easier reading
}
