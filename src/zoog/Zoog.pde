// Brianna Norton 2B | September 8th 2022 | Zoog

void setup() {
  size(1000, 1000);
}

void draw() {
  background(#BEAEC1);
  rectMode(CENTER);
  //zoog(int(random(width)), int(random(height)));
  zoog(mouseX, mouseY);
  zoog(mouseX-100, mouseY+50);
  zoog(mouseX+100, mouseY+50);
}

void zoog(int x, int y) {
  // Zoog's Body
  stroke(0);
  fill(0);
  rect(x, y, 20, 100);

  // Zoog's Head
  stroke(0);
  fill(#E9E6EA);
  ellipse(x, y-30, 60, 60);
  line(x-10, y-70, x, y-60);
  line(x+10, y-70, x, y-60);
  line(x+5, y-10, x-5, y-10);
  line(x-20, y-50, x-8, y-40);
  line(x+20, y-50, x+8, y-40);

  // Zoog's Eyes
  //fill(#AB14F7);
  //ellipse(x-18, y-30, 16, 32);
  //ellipse(x+18, y-30, 16, 32);

  // Zoog's Eyes
  fill(#AB14F7);
  ellipse(x-18, y-30, 16, 32);
  ellipse(x+18, y-30, 16, 32);

  // Zoog's Legs
  stroke(0);
  line(x-10, y+50, x-20, y+60);
  line(x+10, y+50, x+20, y+60);

  // Zoog's Legs
  stroke(0);
  line(x-10, y, x-20, y+60);
  line(x+10, y, x+20, y+60);

  // Zoog's Legs
  stroke(0);
  line(x, y+40, x+20, y+90);
  line(x, y+40, x-20, y+90);
}
