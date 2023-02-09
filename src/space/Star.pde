class Star {
  int x, y, diam, speed;
  Star () {
    x = int(random(width));
    y = int(random(height));
    diam = int(random(1, 7));
    speed = int(random(2, 5));
  }

  void display() {
    fill(#D5AB55);
    circle(x, y, diam);
    //fill(#ACACE6);
    //circle(x, y, diam);
  }

  void move() {
    if (y>height+5) {
      y= -10;
    } else {
      y += speed;
    }
  }

  boolean reachedBottom() {
    return true;
  }
}
