class Lazer {
  int x, y, w, h, speed;
  color c1;
  //PImage lazer;

  //constroctir

  Lazer(int x, int y) {
    this.x = x;
    this.y = y;
    w = 4;
    h = 12;
    speed = 9;
    c1 = color(200, 22, 22);
  }

  void display() {
    rectMode(CENTER);
    noStroke();
    fill(#ACACE6);
    rect(x, y, w, h);
  }

  void move() {
    y -= speed;
  }

  boolean reachedTop() {
    if (y<-10) {
      return true;
    } else {
      return false;
    }
  }

  boolean intersect (Rock rock) {
    float d = dist(x, y, rock.x, rock.y);
    if (d<40) { //refine the collision detection
      return true;
    } else {
      return false;
    }
  }
}
