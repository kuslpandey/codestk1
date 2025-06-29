float factor = 1;
float angle = 0;
void draw() {
  background(0);
  rectMode(CENTER);

  translate(50, 50); // geh zur Mitte
  rotate(angle);
  scale(factor);
  rect(0, 0, 10, 10);
angle += 0.05;
  factor += .1;
  if (factor > 12) {
    factor = 1;
  }
}
