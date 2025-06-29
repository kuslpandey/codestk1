float angle = 0;
void setup(){
background(0);

}
void draw() {
  background(0);

  translate(50, 50); // geh zur Mitte
  rotate(angle); // drehe
  rect(0, -3, 50, 6); // zeichne Zeiger

  angle += 0.21; // in 5° Schritten
}
