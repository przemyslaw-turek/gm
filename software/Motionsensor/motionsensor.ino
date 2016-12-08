#define debug
#define MSPIN             4					 // PIN connected to  motion sensor

const char* outTopic3 = "MS";

int state_MS;
int prev_state_MS;

void setup() 
    {
        pinMode(MSPIN,INPUT);
    }

void loop() 
  {
        state_MS=digitalRead(MSPIN);
	if (state_MS==HIGH && prev_state_MS==LOW)
	{
		#ifdef debug
		Serial.println("Motion detected");
		#endif
		client.publish(outTopic3,"Motion detected");
	}
	prev_state_MS=state_MS;
	delay (300);
  }
