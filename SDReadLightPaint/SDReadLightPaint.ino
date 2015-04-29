//#include <EEPROM.h>
#include <Adafruit_NeoPixel.h>
#include <SD.h>
#include <SPI.h>

/*
  Read image data from an SD card and display that on the Light Strip
 This should allow much, much larger images to be displayed on the light painting
 rig than are possible at the moment. It also means that it's feasible to have 
 several readydisplay at any one time, which means that you wouldn't need to 
 take a computer with you when you were out making pictures. 
 
 */

#define IMAGEWIDTH 60
#define IMAGEHEIGHT 5
#define DELAY 10  //time delay to display each pixel
#define LIGHT_PIN 6
#define CS_PIN 10

uint32_t myImage[IMAGEWIDTH][IMAGEHEIGHT];
int offset; // = 54; //File formatting offset (54 bytes for 'Compatible' BMP, 70 bytes for std. 
// The offset is written to byte at position 0xA


Sd2Card card;
SdVolume volume;
SdFile root;

// Parameter 1 = number of pixels in strip
// Parameter 2 = pin number (most are valid)
// Parameter 3 = pixel type flags, add together as needed:
//   NEO_RGB     Pixels are wired for RGB bitstream
//   NEO_GRB     Pixels are wired for GRB bitstream
//   NEO_KHZ400  400 KHz bitstream (e.g. FLORA pixels)
//   NEO_KHZ800  800 KHz bitstream (e.g. High Density LED strip)
Adafruit_NeoPixel strip = Adafruit_NeoPixel(60, LIGHT_PIN, NEO_GRB + NEO_KHZ800);

int startButton = 7;
int selectButton = 8;
int selectedFile = 0;
void setup() 
{

  Serial.begin(9600);
  //while(!Serial);

  strip.begin();
  strip.show(); // Initialize all pixels to 'off'
  pinMode(startButton, INPUT);
  pinMode(selectButton, INPUT);

  pinMode(CS_PIN, OUTPUT);
  if(!SD.begin(CS_PIN)) {
    Serial.println("SD Card reading failed.");
    return;
  }
  Serial.println("Card Initialised");
}




/*
  Wait for button to be pressed
 Open file and move to offset
 Repeat for each line in the image
 Read out 1 column of data
 advance 2 bytes to account for line terminator
 End repeat
 Close file
 
 If the button pressed is the select button, increment the file counter by one (to use the next file in the directory).
 
 //*/

void loop()
{
  int i, j, filesize, width, height, padding;
  unsigned char s, r, g, b;
  char filename[16];
  s=0;

  File datafile;


  //Make sure that the strip is turned off
  for(j=0; j<IMAGEWIDTH; j++) {
    strip.setPixelColor(j,strip.Color(0,0,0));
  }
  strip.show();

  Serial.println("Waiting");

  while(digitalRead(startButton) && digitalRead(selectButton)); //Hold the execution here 

  if(!digitalRead(selectButton)) {
    //Handle chainging the file that's selected
    selectedFile ++;

    if (selectedFile > 16)  //handle wrapping the file
    {
      selectedFile = 0;
    }
    strip.setPixelColor(selectedFile,strip.Color(128, 0, 0));
    strip.show();
    delay(500); //Wait half a second to debounce the input.

    switch  (selectedFile) {
    case 0:
      strcpy(filename, "0.bmp");
      break;
    case 1:
      strcpy(filename, "1.bmp");
      break;
    case 2:
      strcpy(filename, "3.bmp");
      break;
    case 3:
      strcpy(filename, "4.bmp");
      break;
    case 4:
      strcpy(filename, "5.bmp");
      break;
    case 5:
      strcpy(filename, "6.bmp");
      break;
    case 6:
      strcpy(filename, "7.bmp");
      break;
    case 7:
      strcpy(filename, "8.bmp");
      break;
    case 8:
      strcpy(filename, "9.bmp");
      break;
      case 9:
      strcpy(filename, "10.bmp");
      break;
      case 10:
      strcpy(filename, "11.bmp");
      break;
    case 11:
      strcpy(filename, "12.bmp");
      break;
    case 12:
      strcpy(filename, "13.bmp");
      break;
    case 13:
      strcpy(filename, "14.bmp");
      break;
    case 14:
      strcpy(filename, "15.bmp");
      break;
    case 15:
      strcpy(filename, "16.bmp");
      break;
    case 16:
      strcpy(filename, "17.bmp");
      break;
    }
    /*
      domo
     alien
     comet1
     comet2
     flames
     greatwave
     line
     mario
     oxhack
     nyan
     ShootingStar
     sparkles
     wave
     
     */

  } 
  else {


    datafile = SD.open(filename, FILE_READ);
    filesize=datafile.size();

    // while(digitalRead(7));  //Hold here whilst waiting 

    //Do some reading of the bmp file to determine its width, height and where the data is. This assumes that the file follows the BITMAPINFOHEADER2 format
    if(datafile) {
      /*Serial.println("Datafile reading");
       for(i=0; i<datafile.size(); i++) {
       Serial.println(datafile.read());
       }//*/
      datafile.seek(0xa); // 0xOa contains the byte offset to the start of the pixel data. Use this to read the value for the image
      offset = datafile.read();
      Serial.print("Offset=" + offset);
      Serial.println(offset);
      Serial.println("Width:");
      datafile.seek(0x12); //0x12 is the start of 4 bytes containing the pixel width. 
      width = 0;
      for(i=0; i<4; i++) {
        width += (datafile.read() << (8*i)); //Width information is stored as little endian 4 bytes
        //Serial.println(datafile.read(), HEX);
      }
      Serial.println(width);
      padding = width % 4; //There will be up to 3 bytes padding of zeros at the end of each row of data, so need to catch that. 

      Serial.println("Height:");
      datafile.seek(0x16); //0x16 is the start of 4 bytes containing the pixel height. 

      height=0;
      for(i=0; i<4; i++) {
        height += (datafile.read() << (8*i)); //Width information is stored as little endian 4 bytes
        //Serial.println(datafile.read(), HEX);
      }
      Serial.println(height);
    }


    if(datafile) {

      Serial.print("File Size: ");
      Serial.print(datafile.size());
      Serial.println(" bytes");

      if(datafile.size()< 54) {
        Serial.println("File is too small to be used here");
      }

      datafile.seek(offset);  //Seek to the data

      //for(i=0; i<(filesize-offset-IMAGEWIDTH); i++){ //Read through all the image data in the file 
      for(i=0; i<abs(height); i++) {
        if(!datafile.available()) {
          Serial.println("File not available for reading");
          break;
        }
        for(j=0; j < abs(width); j++) { //For each row in the image (note that the image is rotated by 90degrees)

          b = datafile.read();   //Format is BGR, 
          g = datafile.read();
          r = datafile.read();
          /* Serial.print(r);
           Serial.print(",");
           Serial.print(g);
           Serial.print(",");
           Serial.println(b);//*/


          strip.setPixelColor(j,strip.Color(r, g, b));  
        }
        //i += (IMAGEWIDTH); 

        strip.show();
        delay(DELAY);
        //Each row of pixel data is padded to be a multiple of 4 bytes long. 
        //If it's not a round number of 4's, there will be bytes set to 0 at the end of each row
        // Need to read these so that image doesn't get kewed whilst reading out. 
        for(j=0; j<padding; j++) {
          b= datafile.read();
        }

        //Serial.println(" EOL");
        //PADDING WIDTH is set so that each row is a multiple of 4 bytes. Need to divide the row width by 4 (for 60 px, it's 15) so there's no need to have anything here. 

      }

      //Make sure that the strip is turned of when the image finishes. 
      for(j=0; j<IMAGEWIDTH; j++) {
        strip.setPixelColor(j,strip.Color(0,0,0));
      }
      strip.show();
    } 
    else {
      Serial.println("Nothing Read");
    }

    datafile.close();
    Serial.println("Done");

  } //end if
} //loop





