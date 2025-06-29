


class Ball {
  int xpos;
  int ypos;
  int durchmesser;

  void zeichne() {
    ellipse(xpos, ypos, durchmesser, durchmesser);
  }

  void bewege() { // funktion
    xpos++;
  }
}
