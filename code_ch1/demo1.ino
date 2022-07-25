/* demo1 */

// Define Arduino Pin and variables
int motor_en = 9;
int motor_in1 = 10;
int motor_in2 = 11;
int sensor_pin = A2;  // pre-defined A2 as an integer in arduino lib
int sensorRead;       // 10 bit ADC value

int spd_th1 = 900;
int spd_th2 = 500;
 

void setup() {
  // put your setup code here, to run once:
  
  Serial.begin(9600);
  pinMode(motor_en,OUTPUT);    // Motor_EN
  pinMode(motor_in1,OUTPUT);   // Motor_IN1
  pinMode(motor_in2,OUTPUT);   // Motor_IN2
  pinMode(sensor_pin,INPUT);    // Sensor V_Out1

  // set motor rotate direction
  digitalWrite(motor_in1,HIGH);
  digitalWrite(motor_in2,LOW);
  analogWrite(motor_en,255);    // 100% Duty Cycle PWM

  // Attach Interrupt to IO pins
  // attachInterrupt(digitalPinToInterrupt(pin_number), isr_functionhandle, CHANGE);
}

void loop() {
  // put your main code here, to run repeatedly:
  
  // read sensor
  sensorRead = analogRead(A2);
  Serial.println(sensorRead);
  
  // Set Motor Speed
  if(sensorRead > spd_th1 ){
    analogWrite(motor_en,255);
  }else if (sensorRead > spd_th2){
    analogWrite(motor_en,128);
  }else{
    analogWrite(motor_en,90);
  }
  
}
