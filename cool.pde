PImage img;

void setup() {
  size(700, 460);
  background(190);
  frameRate (5);
img = loadImage("cool.jpeg");
  println(img.width, img.height);
  img.resize(700, 460);
}
void draw() {
  background(255);
  fill(0);
  noStroke();
  image(img, 0, 0);
 //int m = int(random(width));
      //int n = int(random(height));
     // color o = img.get(int(m), int(n));
      //fill(o);
      //square(m,n,40);
  float tiles = mouseX;
  float tileSize = width/tiles;
  
  translate(tileSize/2, tileSize/2);
  
  for (int x = 0; x < tiles; x++) {
    for (int y = 0; y < tiles; y++) {
      color c = img.get(int(x*tileSize), int(y*tileSize));
     
     float bright =(red(c) + green(c)+ blue(c)) / 5;
     float size = map(bright, 0, 255, tileSize, 0);
     
      ellipse(x*tileSize, y*tileSize, size, size);
       
       
      int m = int(random(width));
      int n = int(random(height));
      color o = img.get(int(m), int(n));
      fill(o);
      square(m,n,25);
   
         
         
       
   
   
      
} 
}
}
