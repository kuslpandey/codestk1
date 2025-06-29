float a = 0;
float a2 = PI/4;
float a3 = PI/2;
void setup() {
  size(400, 400);
  strokeWeight(3);
}

void draw() {
  background(0);

  translate(width/2, height/2);
  rotate(a);
  stroke(255);
  line(-100, 0, 100, 0);
  
  translate(100, 0); // translate pachi rotate nai garney nicht umgekehrt
  rotate(a2);
  line(-50, 0, 50, 0);
  
  translate(50,0); // 2nd rotor vanda half hunxa , 2nd rotor ko length 1st ko vanda half
  rotate(a2);
  line(-25,0,25,0);

 a = a+ .03;//.03 LAI BADAYO VANY XITO GHUMXA, teslai - garyo vaney arko dirction bata ghumxa d.h rotate(-a)
 a2 = a2 +.1; // 2nd sano rotor ni rotate garxa puchaar ko
 a3 = a3 + .15;
 //a += .03;
}
