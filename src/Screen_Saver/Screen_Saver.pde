// Brianna Norton | October 18th 2022 | Screen Saver

float xpos, ypos, strokeW, pointCount;

void setup() {
  size(displayWidth, displayHeight);
  background(132);
  xpos = random (width);
  ypos = random(height);
}

void draw() {
  strokeW = random(1, 5);
  pointCount = random(5, 50);
  strokeWeight(strokeW);
  stroke(random(227), random(164), random(82));
  //edge detection
  if (xpos > width || xpos <0 || ypos > height || ypos <0) {
    xpos = random(width);
    ypos = random(height);
  }
  //The walker sequence
  int  rand = int(random(4));
  if (rand==0) {
    moveLeft(xpos, ypos, pointCount);
  } else if (rand==1) {
    moveUp(xpos, ypos, pointCount);
  } else if (rand==2) {
    moveRight(xpos, ypos, pointCount);
  } else {
    moveDown(xpos, ypos, pointCount);
  }
}
void moveRight(float startX, float startY, float moveCount) {
  for (float i=0; i<moveCount; i++) {
    point(startX+i, startY);
    xpos = startX+i;
  }
}

void moveLeft(float startX, float startY, float moveCount) {
  for (float i=0; i<moveCount; i++) {
    point(startX-i, startY);
    xpos = startX-i;
  }
}

void moveUp(float startX, float startY, float moveCount) {
  for (float i=0; i<moveCount; i++) {
    point(startX, startY-i);
    ypos = startY-i ;
  }
}

void moveDown(float startX, float startY, float moveCount) {
  for (float i=0; i<moveCount; i++) {
    point(startX, startY+i);
    ypos = startY+i;
  }
}
