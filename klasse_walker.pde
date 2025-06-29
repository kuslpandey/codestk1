
class Walker {
  //eigenschaften
  float x, y;
  float r, g, b, a;

  Walker() {
    x = width/2;
    y = height/2;
    r = random(255);
    g = random(255);
    b = random(255);
    a = 140;
  }
  void render() {
    stroke(random(5));
    strokeWeight(random(4));
    // color(100,100,100,10);
    //circle(x,y,100);
    point(x, y);
  }
  void step() {
    int choice = int (random(4));

    if (choice == 0) {
      x++;
    } else if (choice == 1) {
      x--;
    } else if (choice == 2) {
      y++;
    } else {
      y--;
    }
    x = constrain(x, 0, width-1); //screen bahira jana didaina sobald x width ist, vitra lyauxa
    y = constrain(y, 0, height-1);
  }

  void step2() {
  }
  void step3() {
    x += constrain(x, 0, width-1);
    y += constrain(y, 0, height-1);

    x = constrain(x, 0, width-1);
    y = constrain(y, 0, height-1);
  }
  void step4() {
    float nextX, nextY;
    r += random(-10, 10);
    g += random(-10, 10);
    b += random(-10, 10);
    a += random(-10, 10);

     //strokeWeigth(random(10));
    strokeWeight(2);
    nextX = x+random(-30, 30);
    nextY = y+random(-30, 30);
    stroke(r,g,b,a);
    line(x,y,nextX,nextY);

    x = nextX;
    y = nextY;

    x = constrain(x, 0, width-1);
    y = constrain(y, 0, height-1);
    
    //r = constrain(x);
  }
}
