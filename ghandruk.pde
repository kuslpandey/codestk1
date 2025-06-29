PImage img;

void setup() {
  size(1000, 1000);
  img = loadImage("ghandruk.jpeg");
  img.resize(width, height);
    image(img, 0, 0, width, height);
  strokeWeight(5);
  noSmooth();

}

void Pixele(int cell) {
  for (int i=0; i == 0; i++) {
    background(255);
    for (int y = 0; y < height; y += cell) {
      for (int x = 0; x < width; x += cell) {
        int col = img.get(x, y);
        fill(col);

        ellipse(x, y, cell, cell);
      }
    }
  }
}
void Pixelr(int cell) {
  for (int i=0; i == 0; i++) {
    background(255);
    for (int y = 0; y < height; y += cell) {
      for (int x = 0; x < width; x += cell) {
        int col = img.get(x, y);
        fill(col);

        rect(x, y, cell, cell);
      }
    }
  }
}

void PixelL(int linelength) {
  int x = int(random(img.width));
  int y = int(random(img.height));
  color pixelColor = img.get(x, y);
  stroke(pixelColor);
  line(x, y, x + random(-linelength / 2, linelength / 2), y + random(-linelength / 2, linelength / 2));
}

void draw() {
  //Hier die fuktion aufrufen welche man möchtet, das Parameter ist die fläche des Objects
  
  Pixelr(10);  //Hier ein Rectangle, der Wert muss größer als 5 sein um das Bild sichbar zu machen
  //Pixele(15);  //Hier ein Ellipse
  
  //for (int i=0; i<100; i++) { PixelL(20); }  //Hier Random Linien
}
