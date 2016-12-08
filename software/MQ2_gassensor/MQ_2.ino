#define debug
#define time 10
#define MQ2PIN            14

const char* outTopic4 = "MQ2";

int flag_th=0;
int state_MQ2;
int prev_state_MQ2;

void setup() 
  {
        pinMode(MQ2PIN,INPUT);
        prev_state_MQ2 = !digitalRead(MQ2PIN);

  }

void loop() 
  {
        state_MQ2 = !digitalRead(MQ2PIN);
	if (state_MQ2==HIGH && prev_state_MQ2==LOW)
	  {
		#ifdef debug
		Serial.println("GASALARM");
		#endif
		client.publish(outTopic4,"GASALARM");
	  }
	prev_state_MQ2=state_MQ2;
	delay(500);
  }
