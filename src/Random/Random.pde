// Brianna Norton | September 6, 2022 | Random

void setup() {
  size(displayWidth, displayHeight);
  background(128);
}

void draw() {
  //background(128);
  fill(random(255), random(255), random(255));
  ellipse(mouseX, mouseY, random(10), random(10));
}
