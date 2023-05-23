class Car {
  color c;
  float xpos, ypos, xspeed;

  //the constructor
  Car () {
    c=color(random(255), random(255), random(255), random(255));
    xpos=random (width);
    ypos=random (height);
    xspeed= random(1, 5);
  }
  void display() {
    rectMode(CENTER);
    fill(c);
    rect(xpos, ypos, 10, 20);
    fill(0);
    rect(xpos-7, ypos-6, 2, 6);
    rect(xpos-7, ypos+6, 2, 6);
    rect(xpos+7, ypos-6, 2, 6);
    rect(xpos+7, ypos+6, 2, 6);
    fill(#FAFF03);
    rect(xpos+4, ypos+10, 2, 2);
    rect(xpos-4, ypos+10, 2, 2);
    fill(#D1FFFC);
    rect(xpos, ypos+6, 10, 3);
    fill(#FF1212);
    rect(xpos+4, ypos-10, 2, 2);
    rect(xpos-4, ypos-10, 2, 2);
  }

  void drive() {
    ypos = ypos + xspeed;
    if (ypos > width) {
      ypos = 0;
    }
  }
}
