#include <Arduino.h>

int count = 0;

void setup() {
  Serial.begin(9600);
}

void loop() {
  count++;
  Serial.print("Line: ");

  Serial.println(count);
  delay(500);
}