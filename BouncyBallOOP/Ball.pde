class Ball {
  //declaring all information (fields) contained within the Ball class
  PVector loc, vel;
  float diam;
  color c;

  //this is a constructor. you can have more than one constructor for a given class
  Ball() {
    vel = PVector.random2D();     //make velocity a random vector
    vel.mult(25);                //multiply vel to make objects move faster
    diam = 200;                  //set diameter
    loc = new PVector(random(diam, width-diam), random(diam, height-diam)); //set a random starting location
    c = color(random(255), random(50), random(100, 255));        //set a random color
  }
  Ball(float tDiam) { 
    diam = tDiam;
    loc = new PVector(random(diam, width-diam), random(diam, height-diam));
    vel = PVector.random2D();
    vel.mult(20);
    c = color(0, random(50, 255), random(100, 255));
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
  void restrain() {
    if (loc.x >=width-diam/2 || loc.x<= 0+diam/2) { //if ball hits sides reverse the x velocity
      vel.x *= -1;
    }
    if (loc.y>=height-diam/2 || loc.y<=0+diam/2) { //if ball hits the top or bottom reverse the y velocity
      vel.y *= -1;
    }
  }
}