final int RADIUS = 10;                    // Konstante deklarieren
int x,y,vx,vy;                            // globale Variablen deklarieren

float a, b, c, d;
float aspeed = 5;
float y_1_speed = 5.4;
float y_2_speed = 6;
float x_2_speed = 3;



void setup(){
  fullScreen();

  a = 120;
  b = 120;
  d = height/2;
  c = width/2;
  
}

void draw(){

  background( 100, 200, 300);
  stroke(150,200,40);
  strokeWeight(3);
  fill(255,255,255);
  ellipse(a, b, 75, 75);
  ellipse(c, d, 150, 150);

  a += aspeed;
  //ball_1_y += y_1_speed;
  //ball_2_x += x_2_speed;
  d += y_2_speed; 

  if(a>width-75 || a<75){
    aspeed*=-1;
    draw_particle_1();
    }
  if (b>height-75||b<75) {
    y_1_speed *= -1;
    draw_particle_1();
    }
    
  
  if(c>width-100 || c<100){
    x_2_speed*=-1;
    draw_particle_2();
    
  }
  if (d>height-100||d<100) {
    y_2_speed *= -1;
    draw_particle_2();

  }

}
void draw_particle_1(){
  fill(0,0, 0);
  ellipse(a, b, 180,180);
}
void draw_particle_2(){
  fill(150,59, 175);
  ellipse(c, d, 230,230);
}
