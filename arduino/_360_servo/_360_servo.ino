#include <Servo.h> 

Servo servo;

void setup() {
  Serial.begin(9600);
  servo.attach(6);
}

void turn(int sec) {
  servo.write(180);
  delay(sec*1000);
  servo.write(90);
}

int incoming;

void loop() {
  turn(1);
}
