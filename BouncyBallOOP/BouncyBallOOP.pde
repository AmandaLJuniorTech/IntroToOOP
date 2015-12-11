Ball b;                //declare a new Ball called b
Ball b2;  

void setup() {
  size(800, 800);
  b = new Ball();      //initialize b as a new object of the Ball class
  b2 = new Ball();
}

void draw() {
  background(0);
  b.display();         //call b's display() method
  b2.display();
  b.move();
  b2.move();
  b.restrain();
  b2.restrain();
}