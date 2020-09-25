#include <Arduino.h>
#include <SD.h>
#include <SPI.h>

#define CS 10
#define CURRENT_READ A0

File logger;
int run = 1;
char name[100] = "Data_run_1";

void setup()
{
    // Open serial communications and wait for port to open:
    Serial.begin(9600);

    Serial.print("Initializing SD card...");

    if (!SD.begin(CS)) {
        Serial.println("initialization failed!");
        return;
    }
    Serial.println("initialization done.");

    // Check for existing files, and change file name
	while(SD.exists(name)){
        sprintf(name, "Data_run_%d", ++run);
    }
    logger = SD.open(name, FILE_WRITE);

}

void loop()
{

    // read current sensor
    int current_reading = analogRead(CURRENT_READ);

    // Build the data string
    String data = String(current_reading) /* + "," + other_data */;

    // Print the data to the file
    logger.println(data);
}

