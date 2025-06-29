PVector v; // A vector V is made

void setup() {
  size(1000, 1000);
}

void draw()
{
  strokeWeight(2); //The Characteristics for the line
  stroke(0);
  
  translate(width/2, height/2); //It brings our (0,0) point to (height/2 and width/2)
  
  v = PVector.random2D(); //random2D returns a new 2D unit vector with a random direction. In this case it will be made 300 times larger from the code in the next line. 
  
  PVector w = new PVector(random(-500,500),random(-500,500)); //Creates two random numbers for x and y, between -500 and 500
  
  v.mult(300); //Makes the point in the middle 300 times long
  
  line(0, 0, v.x, v.y); //The value from vector v i.e random2D is eingese tzt here
  line(0, 0, w.x, w.y); //The value from vector w i.e random(-500,500) is eingesetzt here
}
