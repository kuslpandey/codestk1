int lineSize = 50;
PImage image;

void setup() {
  size(500, 375);
  image = loadImage("messsi.jpeg");
  image.resize(width, height);

  image(image, 0, 0, width, height);

  strokeWeight(2);
  noSmooth();
}

void draw() {
  for (int i = 0; i < 100; i++) {
    drawOneLine();
  }
}

void drawOneLine() {
  int x = int(random(image.width));
  int y = int(random(image.height));

  color pixelColor = image.get(x, y);
  stroke(pixelColor);

  float r = random(.5);

  // Draw lines in 4 directions
  if (r < 1) {
    line(x - lineSize / 2, y, x + lineSize / 2, y);
  } else if (r < .5) {
    line(x, y - lineSize / 2, x, y + lineSize / 2);
  } else if (r < .75) {
    line(x - lineSize / 2, y - lineSize / 2,
     x + lineSize / 2,
      y + lineSize / 2);
  } else {
    line(x - lineSize / 2, y + lineSize / 2,
     x + lineSize/2,
      y - lineSize/2);
 }

  // Draw lines in random directions
  // line(x, y,
  //      x + random(-lineSize / 2, lineSize / 2),
  //      y + random(-lineSize / 2, lineSize / 2));

  // Draw lines in 2 directions
  //if (r < .5){
  //  line(0, y, width, y);
  //} else {
  //  line(x, 0, x, height);
  //}
}
