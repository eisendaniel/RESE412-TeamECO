#include <Arduino.h>
#include <SD.h>
#include <SPI.h>

#define CS 10
#define CURR_READ A0
#define DIST_READ A1

File logger;
double current_reading;
int distance_reading, run = 1;

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

    File dataFile = SD.open("datalog.csv", FILE_WRITE);
    dataFile.println("\n\nhall, current, distance\n");
    dataFile.close();
}

void loop()
{
    // make a string for assembling the data to log:
    String dataString = "";
    // read three sensors and append to the string:

    current_reading = analogRead(CURR_READ);
    
    dataString += String(current_reading);
    dataString += String(",");
    dataString += String((0.0256 * current_reading) - 2.5447);

#ifdef DIST_READ
    distance_reading = analogRead(DIST_READ);
    dataString += String(",");
    dataString += String(distance_reading);
#endif

    // open the file. note that only one file can be open at a time,
    // so you have to close this one before opening another.
    File dataFile = SD.open("datalog.csv", FILE_WRITE);

    // if the file is available, write to it:
    if (dataFile) {
        dataFile.println(dataString);
        dataFile.close();
        // print to the serial port too:
        Serial.println(dataString);
    } else { // if the file isn&apos;t open, pop up an error:
        Serial.println("error opening file");
    }
}
