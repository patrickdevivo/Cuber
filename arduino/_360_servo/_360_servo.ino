#include <Servo.h> 

Servo grip1;
Servo grip2;
Servo rotate1;
Servo rotate2;

int rotate_time = 430;

void setup() {
  Serial.begin(9600);
  grip1.attach(8);
  grip2.attach(4);
  rotate1.attach(6);
  rotate2.attach(2);
  
  
//  grip(2, "open");
  delay(3000);
  grip(2, "close");
//  grip(1, "open");
  delay(3000);
  grip(1, "close");
 
  
//  execute("cdCDdADbaBCdcDdaDbABCdcDabABcdCDAbaBdaaDbAABcdCDabABbccBdCCDAbaBdaDbABcdCDdADbaBCdcDdaDbABCdcDbccBdCCDAbaBdaaDbAABCdcDabABabABcdCDAbaBbccBdCCDabABcdCDAbaBcdCDdADbaBcdCDdaDbABcdCDdADbaBCdcDdaDbABCdcDbccBdCCDAbaBCdcDabABcdCDabABcdCDAbaBCdcDdADbaBCdcDdaDbABCdcDdADbaBcdCDdaDbABCdcDbccBdCCDAbaBCdcDabABcdCDdaDbABcdCDdADbaBcdCDdaDbABCdcDdADbaBcdCDdADbaBCdcDdaDbABCdcDdADbaBcdCDdaDbABcdCDabABcdCDAbaBabABcdCDdaDbABcdCDdADbaBCdcDdaDbABCdcDAbaBdaaDbAABcdCDcdCDdADbaBCdcDdaDbABcdCDdaDbABcdCDcdCDdADbaBCdcDdADbaBcdCDdaDbABcdCDdaDbABcdCDcdCDdADbaBcdCDcdCDcdCDdaDbABcdCDAbaBbccBdCCDabABdaDbABcdCDcdCDbccBdCCDabABbccBdCCDAbaBdADbaBcdCDdaDbABcdCDcdCD");
  
//  execute("cdCDdADbaBCdcDda");
}

void rotate(int rotator, String command) {
  int set;
  if (command == "cw" && rotator == 1) set = 180;
  if (command == "ccw" && rotator == 1) set = 0;
  if (command == "cw" && rotator == 2) set = 0;
  if (command == "ccw" && rotator == 2) set = 180;
  
  switch (rotator) {
     case 1: rotate1.write(set); delay(rotate_time); rotate1.write(90); break;
     case 2: rotate2.write(set); delay(rotate_time); rotate2.write(90); break;
     default: break;
  }
}

void grip(int gripper, String command) {
  int set;
  if (command == "open") set = 60; 
  if (command == "close") set = 180;
  
  switch (gripper) {
     case 1: grip1.write(set); break;
     case 2: grip2.write(set); break;
     default: break;
  }
}

void execute(String turns) {
  for(int i=0; i <= turns.length(); i++) {
    char current = turns[i];
    if (current == 'a') rotate(1, "cw");
    if (current == 'A') rotate(1, "ccw");
    if (current == 'c') rotate(2, "cw");
    if (current == 'C') rotate(2, "ccw");
    
    if (current == 'b') grip(1, "open");
    if (current == 'B') grip(2, "close");
    if (current == 'd') grip(1, "open");
    if (current == 'D') grip(2, "close");
  }
}

void loop() {
  if (Serial.available() > 0) {
    char incoming = Serial.read();
    execute(String(incoming));    
    Serial.print(incoming);
    Serial.println();
  }
}
