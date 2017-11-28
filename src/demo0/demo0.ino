// Pin numbers
int reset = 23;

// floor         0   1   2   3   4   5   6  7  8
int clock [9] = {22, 26, 30, 34, 38, 42, 4, 1, 7};
int data [9] =  {24, 28, 32, 36, 40, 44, 3, 0, 6};
int driver[9] = {25, 29, 33, 37, 41, 45, 5, 2, 8};

byte all_on[] {0xff, 0xff, 0xff, 0xff, 0xff};

void setup() {
  for(int i = 0; i < 9; i++) {
    pinMode(data[i], OUTPUT);
    pinMode(clock[i], OUTPUT);
    pinMode(driver[i], OUTPUT);
    digitalWrite(driver[i],LOW);
  }
  
  pinMode(reset,OUTPUT);
  digitalWrite(reset,LOW);
  delay(100);
  digitalWrite(reset,HIGH);
  
}

void loop() {

  // turn all LEDs on
  for (int i = 0; i < 5; i++) {
      for(int j = 0; j < 9; j++) {
        shiftOut(data[j], clock[j], MSBFIRST, all_on[i]);
      }
  }

  delay(1000);

/*
  // turn on each single LED 
  for(int j = 0; j < 36; j++) {
    for(int i = 0; i < 5; i++) {
      
      digitalWrite(driver,HIGH);
      delay(2);
      shiftOut(data, clock, MSBFIRST, single_on[j][i]);
      delay(2);
      digitalWrite(driver,LOW);
      
    }
    delay(1000);
  }
  */
  
  delay(1000);
}


