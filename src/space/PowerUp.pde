class PowerUp {
  int x, y, diam, speed;
  char type;
  //constroctor

  PowerUp() {
    x = int(random(width));
    y = -100;
    diam = 100;
    speed = int(random(3, 10));
    int rand = int(random(3));
    if (rand == 0) {
      type = 'H';
    } else if (rand == 1) {
      type = 'A';
    } else {
      type = 'T';
    }
  }

  void display() {
    fill(0, 222, 0);
    ellipse(x, y, diam, diam);
    fill(0);
    text(type, x, y);
  }

  void move() {
    y += speed;
  }

  boolean reachedBottom() {
    if (y>height+50) {
      return true;
    } else {
      return false;
    }
  }

  boolean intersect(Ship shera) {
    float s = dist(x, y, shera.x, shera.y);
    if (s<62) {
      return true;
    } else {
      return false;
    }
  }
}
