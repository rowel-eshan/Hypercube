#include "Arduino.h"
#include <Adafruit_MQTT.h>
#include <Adafruit_MQTT_Client.h>
#include <FastLED.h>
#include <EEPROM.h>
#define LED_PIN     D7
#define NUM_LEDS    264                                    
#define BRIGHTNESS  255	                                      
#define LED_TYPE    WS2812B
#define FASTLED_ESP8266_RAW_PIN_ORDER
#define COLOR_ORDER GRB
CRGB leds[NUM_LEDS];
uint8_t color;
uint8_t colour;                                             
int step = -1;                                               
#define maxsteps 16
int num, nums = 1;
int w = 0;
int Red   = 50;
int Green = 50;
int Blue  = 50;
int hue = 0;
int pingCount = 0;
/****************************** Speed ******************************************/

int UPDATES_PER_SECOND = 250;

/********************************************************************************/
#define CHANCE_OF_TWINKLE 2
#define DELTA_COLOR_DOWN CRGB(1,0,1)
#define DELTA_COLOR_UP   CRGB(4,0,4)
#define PEAK_COLOR       CRGB(0,128,128)
#define BASE_COLOR       CRGB(0,32,32)
#define MASTER_BRIGHTNESS   255

#include <ESP8266WiFi.h>

String next;
#define led               D7

#define WLAN_SSID       "YOUR_WIFI_SSID"             // Your SSID
#define WLAN_PASS       "YOUR_WIFI_PASS"        // Your password

/************************* Adafruit.io Setup *********************************/

#define AIO_SERVER      "io.adafruit.com"
#define AIO_SERVERPORT  1883                   
#define AIO_USERNAME    "YOUR_AIO_USERNAME"   // Replace with your username
#define AIO_KEY         "YOUR_AIO_KEY"   // Replace with your Key


/************ Global State (you don't need to change this!) ******************/

WiFiClient client;
Adafruit_MQTT_Client mqtt(&client, AIO_SERVER, AIO_SERVERPORT, AIO_USERNAME, AIO_KEY);
Adafruit_MQTT_Publish data = Adafruit_MQTT_Publish(&mqtt, AIO_USERNAME "/feeds/YOUR_FEED_NAME");

/****************************** Feeds ***************************************/


// Setup a feed called 'onoff' for subscribing to changes.

/****************************** FeedName ************************************/
Adafruit_MQTT_Subscribe Mode = Adafruit_MQTT_Subscribe(&mqtt, AIO_USERNAME "/feeds/YOUR_FEED_NAME");



CRGBPalette16 currentPalette;
TBlendType    currentBlending;


void MQTT_connect();


void setup() {
	Serial.begin(9600);
	EEPROM.begin(512);

	pinMode(5, OUTPUT);
	pinMode(0, OUTPUT);

	pinMode(led, OUTPUT);
	digitalWrite(led, HIGH);

	delay( 100 ); // power-up safety delay
	FastLED.addLeds<LED_TYPE, LED_PIN, COLOR_ORDER>(leds, NUM_LEDS).setCorrection( TypicalLEDStrip );
	FastLED.setBrightness(  BRIGHTNESS );
	color = random16(0, 255);
	currentPalette = RainbowColors_p;
	currentBlending = LINEARBLEND;

	// Connect to WiFi access point.
	Serial.println(); Serial.println();
	Serial.print("Connecting to ");
	Serial.println(WLAN_SSID);

	WiFi.begin(WLAN_SSID, WLAN_PASS);
	while (WiFi.status() != WL_CONNECTED) {
		delay(500);
		Serial.print(".");
	}
	Serial.println();

	digitalWrite(led, LOW);

	Serial.println("WiFi connected");
	Serial.println("IP address: ");
	Serial.println(WiFi.localIP());
	WiFi.setSleepMode(WIFI_NONE_SLEEP);
	WiFi.setAutoReconnect(true);
	WiFi.persistent(true);

	// Setup MQTT subscription for onoff feed.
	mqtt.subscribe(&Mode);

}

//////////////////////////////////////////////////////////////////LOOP////////////////////////////////////////////////////////

void FillLEDsFromPaletteColors( uint8_t colorIndex)
{
	uint8_t brightness = 255;

	for ( int i = 0; i < NUM_LEDS; i++) {
		leds[i] = ColorFromPalette( currentPalette, colorIndex, brightness, currentBlending);
		colorIndex += 3;
	}
}

void ModeChange() {
	Serial.println(next);
	if (next == "off" or next == "one" or next == "1") {
		Serial.println("Item 1 selected");
		w = 2;
	} else if (next == "rainbow" or next == "two" or next == "2") {
		currentPalette = RainbowColors_p;
		w = 1;
	} else if (next == "rainbow wave" or next == "three" or next == "3") {
		w = 3;
	} else if (next == "forest" or next == "four" or next == "4") {
		currentPalette = ForestColors_p;
		w = 1;
	} else if (next == "glitter " or next == "five" or next == "5") {
		w = 4;
	} else if (next == "fade" or next == "six" or next == "6") {
		w = 5;
	} else if (next == "red" or next == "seven" or next == "7") {
		w = 100;
		fill_solid(leds, NUM_LEDS, CHSV(0, 255, 255));
	} else if (next == "red" or next == "seven" or next == "7") {
		w = 100;
		fill_solid(leds, NUM_LEDS, CHSV(0, 255, 255));
	} else if (next == "green" or next == "eight" or next == "8") {
		w = 100;
		fill_solid(leds, NUM_LEDS, CHSV(85, 255, 255));
	} else if (next == "blue" or next == "nine" or next == "9") {
		w = 100;
		fill_solid(leds, NUM_LEDS, CHSV(170, 255, 255));
	} else if (next == "purple" or next == "ten" or next == "10") {
		w = 100;
		fill_solid(leds, NUM_LEDS, CHSV(215, 255, 255));
	} else if (next == "red glitter" or next == "eleven" or next == "11") {
		w = 6;
	}
}

void FillSolid() {
	CRGB colour = CRGB( Red, Green, Blue);
	fill_solid(leds, NUM_LEDS , CRGB( Red, Green, Blue));
}

////////////////////////////////////////////////////////////MODES////////////////////////////////////////////////

void rainbowFill() {
	num += 6;
	fill_rainbow(leds, NUM_LEDS, num , 15);
}

void glitter() {
	leds[random(NUM_LEDS)] = CHSV(hue, 255, 255);
	fadeToBlackBy(leds, NUM_LEDS, 10);
	hue++;
}
void fade() {
	fill_solid(leds, NUM_LEDS, CHSV(hue, 255, 255));
	hue++;
}

void redGlitter() {
	leds[random(NUM_LEDS)] = CHSV(0, 255, 255);
	fadeToBlackBy(leds, NUM_LEDS, 10);
}

void loop() {

	MQTT_connect();

	Adafruit_MQTT_Subscribe *subscription;

	while ((subscription = mqtt.readSubscription(2))) {

		if (subscription == &Mode) {
			Serial.print("Mode > ");
			Serial.print(F("Got: "));
			Serial.println((char *)Mode.lastread);
			byte Mode1_state = atoi((char *)Mode.lastread);
			//analogWrite(0, Light2_State);
			//EEPROM.write(1, Mode_state);
			EEPROM.commit();
			next = ((char *)Mode.lastread);
			next.toLowerCase();
			ModeChange();
			//Serial.println(EEPROM.read(1));
			//Serial.println(Light2_State);
		}
	}

	EVERY_N_SECONDS(240){
		mqtt.ping(1);
		pingCount++;
		Serial.println("pinged.");
		data.publish("online");
	}

	////////////////////////////////////////////////////////////////////mode selection
	if (w == 1) {
		static uint8_t startIndex = 0;
		startIndex = startIndex + 1; /* motion speed */
		FillLEDsFromPaletteColors( startIndex);
	}

	else if (w == 2) {
		Red = 0;
		Green = 0;
		Blue = 0;
		FillSolid();
		w = 0;
	}
	else if (w == 3) {
		rainbowFill();
	}
	else if (w == 4) {
		glitter();
	} else if (w == 5) {
		fade();
	} else if (w == 6){
		redGlitter();
	}

	FastLED.show();
	FastLED.delay(1000 / UPDATES_PER_SECOND);
}

void MQTT_connect() {
	int8_t ret;

	// Stop if already connected.
	if (mqtt.connected()) {
		//Serial.println("Connected");
		return;
	}

	digitalWrite(led, HIGH);
	Serial.print("Connecting to MQTT... ");

	uint8_t retries = 3;

	while ((ret = mqtt.connect()) != 0) { // connect will return 0 for connected
		Serial.println(mqtt.connectErrorString(ret));
		Serial.println("Retrying MQTT connection in 5 seconds...");
		mqtt.disconnect();
		delay(5000);  // wait 5 seconds
		retries--;
		if (retries == 0) {
			// basically die and wait for WDT to reset me
			//while (1);
			Serial.println("Wait 10 min to reconnect");
		}
	}
	Serial.println("MQTT Connected!");
	digitalWrite(led, LOW);
}
