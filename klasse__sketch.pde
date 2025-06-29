Ball b;

void setup() {
  size(400, 400);
  //xpos =0;
  //ypos = 200;
  //durchmesser=40;
  b = new Ball(); //nue Instanz von Ball
  b.xpos =0;
  b.ypos = 200;
  b.durchmesser=40;
}

void draw() {
  background(#1EE800);
  fill(255);
  noStroke();

  b.zeichne();
  b.bewege();
}
