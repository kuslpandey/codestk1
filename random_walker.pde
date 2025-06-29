Walker w;

void setup() {
  size(800, 600);
  //fullScreen();
  w = new Walker();
  background(0);
}

void draw() {
  for (int i = 0; i<10; i++) {  //i<10 determines the speed movement ko
    w.step4();
    w.render();
  }
}
