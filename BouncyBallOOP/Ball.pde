class Ball {
  //declaring all information (fields) contained within the Ball class
  PVector loc, vel;
  int diam;
  color c;

  //this is a constructor. you can have more than one constructor for a given class
  Ball() {
    vel = PVector.random2D();
    diam = 200;
    loc = new PVector(random(diam, width-diam), random(diam, height-diam));
    c = color(random(255), random(50), random(100, 255));
  }

  //after declaring fields and setting up constructors, you can define your methods
  void display() {
    fill(c);
    noStroke();
    ellipse(loc.x, loc.y, diam, diam);
  }
  void move() {
    loc.add(vel);
  }
  void restrain(){
    if(loc.x >=width-diam/2 || loc.x<= 0+diam/2) {
 vel.x *= -1;
    }
    if(loc.y>=height-diam/2 || loc.y<=0+diam/2) {
      vel.y *= -1;
    }
  }
}