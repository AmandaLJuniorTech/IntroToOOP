Ball b;                //declare a new Ball called b
Ball b2;                //declare new Ball called b2

void setup() {
  size(800, 800);          //set canvas size
  b = new Ball(150);      //initialize b as a new object of the Ball class and define diameter
  b2 = new Ball(99);      //initialize b2 as a new object of the Ball class and define diameter
}

void draw() {
  background(0);        //background is black
  b.display();         //call b's display() method
  b2.display();       //call b2's display() method
  b.move();            //call b's move() method
  b2.move();           //call b2's move() method
  b.restrain();        //call b's restrain() method
  b2.restrain();        //call b2's restrain() method
}