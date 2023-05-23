// Brianna Norton 2B | October 4, 2022 | EtchASketch
int x, y;

void setup() {
  size(500, 500);
  x = width/2;
  y = height/2;
  background(132);
}
void draw() {
  stroke(0);
  strokeWeight(3);
  if (x>=width) {
    x = 0;
  }
  if (keyPressed) {
    if (key == 'w') {
      moveUp(2);
    } else if (key == 'a') {
      moveLeft(2);
    } else if (key == 's') {
      moveDown(2);
    } else if (key == 'd') {
      moveRight(2);
    }
  }
}

void mousePressed() {
  saveFrame("image~######.png");
}

void keyPressed() {
  if (key == CODED) {
    if (keyCode == UP) {
      moveUp(5);
    } else if (keyCode == RIGHT) {
      moveRight(5);
    } else if (keyCode == DOWN) {
      moveDown(5);
    } else if (keyCode == LEFT) {
      moveLeft(5);
    }
  }
}
void moveRight(int rep) {
  for (int i=0; i<rep; i++) {
    point(x+i, y);
  }
  x = x + rep;
}

void moveLeft(int rep) {
  for (int i=0; i<rep; i++) {
    point(x-i, y);
  }
  x = x - rep;
}

void moveUp(int rep) {
  for (int i=0; i<rep; i++) {
    point(x, y-i);
  }
  y = y - rep;
}

void moveDown(int rep) {
  for (int i=0; i<rep; i++) {
    point(x, y+i);
  }
  y = y + rep;
}
