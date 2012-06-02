#include <SPI.h>
#include <Ethernet.h>
#include <Servo.h>



// Enter a MAC address and IP address for your controller below.
// The IP address will be dependent on your local network:
byte mac[] = { 
  0x00, 0xAA, 0xBB, 0xCC, 0xDE, 0x01 };
IPAddress ip(192,168,1,20);

// initialize the library instance:
EthernetClient client;

const unsigned long requestInterval = 60000;  // delay between requests

char serverName[] = "cuber.patrickdevivo.com";  // twitter URL

boolean requested;                   // whether you've made a request since connecting
unsigned long lastAttemptTime = 0;            // last time you connected to the server, in milliseconds

String currentLine = "";            // string to hold the text from server
String moves = "";                  // string to hold the moves
boolean readingMoves = false;       // if you're currently reading


Servo rotate1; // pos[0]
Servo rotate2; // pos[1]
Servo grip1; // pos[2]
Servo grip2; // pos[3]

void rotate(int rotator, String command) {
  if(rotator == 1 && command == "cw") {
    rotate1.write(190);
  }
  else if(rotator == 1 && command == "ccw") {
    rotate1.write(0);
  }
  else if (rotator == 1 && command == "reset") {
    rotate1.write(90);
  }
  else if(rotator == 2 && command == "cw") {
    rotate2.write(180);
  }
  else if(rotator == 2 && command == "ccw"){
    rotate2.write(0);
  }
  else if (rotator == 2 && command == "reset") {
    rotate2.write(95);
  }
}

void grip(int gripper, String command) {
  if(gripper == 1 && command == "open") grip1.write(60);
  if(gripper == 1 && command == "close") grip1.write(180); 
  if(gripper == 2 && command == "open") grip2.write(60);
  if(gripper == 2 && command == "close") grip2.write(180); 
}

void reset() {
 rotate1.write(95);
 rotate2.write(90);
 grip(1, "open");
 grip(2, "open");
}

void execute(String turns) {
  for(int i=0; i <= turns.length(); i++) {
    char current = turns[i];
    if (current == 'Z') rotate(2, "cw");
    if (current == 'Y') rotate(2, "reset");
    if (current == 'X') rotate(2, "ccw");
    if (current == 'C') rotate(1, "cw");
    if (current == 'B') rotate(1, "reset");
    if (current == 'A') rotate(1, "ccw");
    
    if (current == 'U') grip(2, "open");
    if (current == 'V') grip(2, "close");
    if (current == 'E') grip(1, "open");
    if (current == 'F') grip(1, "close");
    delay(2000);
  }
}


void connectToServer() {
  // attempt to connect, and wait a millisecond:
  Serial.println("connecting to server...");
  if (client.connect(serverName, 80)) {
    Serial.println("making HTTP request...");
    // make HTTP GET request:
    client.println("GET /moves HTTP/1.1");
    client.println("HOST: cuber.patrickdevivo.com");
    client.println();
  }
  // note the time of this connect attempt:
  lastAttemptTime = millis();
} 


void setup() {
  Serial.begin(9600);
  rotate1.attach(2);
  rotate2.attach(6);
  grip1.attach(4);
  grip2.attach(8);
  
  
  // reserve space for the strings:
  currentLine.reserve(256);
  moves.reserve(150);
  
  
  // attempt a DHCP connection:
  Serial.println("Attempting to get an IP address using DHCP:");
  if (!Ethernet.begin(mac)) {
    // if DHCP fails, start with a hard-coded address:
    Serial.println("failed to get an IP address using DHCP, trying manually");
    Ethernet.begin(mac, ip);
  }
  Serial.print("My address:");
  Serial.println(Ethernet.localIP());
  // connect
  connectToServer();
  
  
 
  reset();
  delay(5000);
  grip(1, "close");
  delay(2000);
  grip(2, "close");
  delay(2000);
//  execute("ECFUBVAEBFECFUBVAEBFUCVEBFUCVEBFXUYUZUYVEAFUBVEAFUBVAEBFXUYVECFUBVCEBFEAFUBVAEBFECFUBVAEBFEAFUBVEAFUBVCEBFUCVEBFUCVEBFXUYUAEBFXUYVEAFUBVEAFUBVCEBFXUYVAEBFECFUBVAEBFZUYVCEBFEAFUBVEAFUBVCEBFXUYVAEBFECFUBVAEBFZUYVCEBFECFUBVAEBFZUYVCEBFXUYVXUYVCEBFXUYVAEBFEAFUBVEAFUBVCEBFCEBFXUYVXUYVCEBFCEBFXUYVXUYVCEBFCEBFZUYVEAFUBVAEBFZUYVCEBFXUYVECFUBVCEBFXUYVAEBFXUYVEAFUBVCEBFXUYVAEBFZUYVEAFUBVAEBFZUYVCEBFZUYVEAFUBVAEBFZUYVCEBFXUYVECFUBVCEBFXUYVAEBFEAFUBVEAFUBVCEBFECFUBVCEBFXUYVAEBFZUYVEAFUBVAEBFECFUBVCEBFXUYVXUYVCEBFCEBFZUYVCEBFCEBFZUYVCEBFCEBFXUYVXUYVCEBFZUYV");

  execute("CAB");
}

void loop() {
    if (client.connected()) {
    if (client.available()) {
      // read incoming bytes:
      char inChar = client.read();

      // add incoming byte to end of line:
      if (!(inChar == '!')) {
        moves += inChar; 
      }
      else if (inChar == '!') {
        Serial.println(moves);   
        // close the connection to the server:
        client.stop();  
      }
     }
     }   
 
  if (millis() - lastAttemptTime > requestInterval) {
    // if you're not connected, and two minutes have passed since
    // your last connection, then attempt to connect again:
    connectToServer();
  }

//  if (Serial.available() > 0) {
//    char incoming = Serial.read();
//    execute(String(incoming));    
//    Serial.print(incoming);
//    Serial.println();
//  }
  
}
