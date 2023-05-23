// Brianna Norton 2B | September 27, 2022 | Loops //<>//
int x, y;

void setup() {
  size(400, 400);
  frameRate(10);
  x = 10;
  y = 100;
}

void draw() {
  fill(255);
  drawName();
  noLoop();
}

void drawName() {
  moveRight(10);
  moveDown(50);
  moveLeft(10);
  moveUp(80);
  moveRight(50);
  moveDown(30);
  moveRight(30);
  moveDown(30);
  moveLeft(30);
  moveDown(10);
  moveRight(10);
  moveDown(10);
  moveRight(10);
  moveDown(10);
  moveRight(10);
  moveRight(50);
  moveUp(50);
  moveRight(10);
  moveLeft(20);
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
