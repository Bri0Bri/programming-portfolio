class Rock {
  int x, y, diam, speed;
  PImage rock;

  //constroctor

  Rock() {
    x = int(random(width));
    y = -100;
    diam = int(random(100, 400));
    speed = int(random(3, 10));
    rock = loadImage("rock.png");
  }

  void display() {
    imageMode(CENTER);
    rock.resize(diam, diam);
    image(rock, x, y);
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
  boolean intersect (Ship ship) {
    float d = dist(x, y, ship.x, ship.y);
    if (d<50) { //refine the collision detection
      return true;
    } else {
      return false;
    }
  }
}
