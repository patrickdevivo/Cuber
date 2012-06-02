#include <Servo.h> 

Servo rotate1; // pos[0]
Servo rotate2; // pos[1]
Servo grip1; // pos[2]
Servo grip2; // pos[3]

int pos[] = {90, 90, 60, 60}; // default servo positions
int grippers[] = {60, 180}; // open and close
int rotaters[] = {0, 90, 180}; // ccw, default, cw

int incoming;

void go() {
  rotate1.write(pos[0]);
  rotate2.write(pos[1]);
  grip1.write(pos[2]);
  grip2.write(pos[3]);
  delay(300);
}

void grip(int grip, char command) {
  int set;
  switch (command) {
    case 'open': set = grippers[0]; break; 
    case 'close': set = grippers[1]; break;
    default: break;
  }
  
  switch (grip) {
    case 1: pos[2] = set; break;
    case 2: pos[3] = set; break;
    default: break;
  }
  go();
}

void rotate(int rotater, char command) {
  int set;
  switch (command) {
    case 'default': set = rotaters[1]; break;
    case 'clock': set = rotaters[0]; break;
    case 'counter': set = rotaters[2]; break;
    default: break;
  }
  
  switch (rotater) {
   case 1: pos[0] = set; break;
   case 2: pos[1] = set; break;
  }
  go();
}


void reset()
{
  pos[0] = 90;
  pos[1] = 90;
  pos[2] = 60;
  pos[3] = 60;
  go();
}

void setup() 
{ 
  Serial.begin(9600);
  rotate1.attach(6);
  rotate2.attach(2);
  grip1.attach(8);
  grip2.attach(4);
  
  go(); // default positions
  
//  rotate(1, 'clock');
//  grip(1, 'close');
//  delay(5000);
//  reset();
}
 
 
void loop()
{
  if (Serial.available() > 0) {
    incoming = Serial.read();
    
    switch(incoming) {
      case '0': rotate(1, 'clock'); break;
      case '1': rotate(1, 'default'); break;
      case '2': rotate(1, 'counter'); break;
      
      case '3': rotate(2, 'clock'); break;
      case '4': rotate(2, 'default'); break;
      case '5': rotate(2, 'counter'); break;
      
      case '6': grip(1, 'open'); break;
      case '7': grip(1, 'close'); break;
      
      case '8': grip(2, 'open'); break;
      case '9': grip(2, 'close'); break;
    }
    Serial.write(incoming);
    Serial.println();
  }
}
