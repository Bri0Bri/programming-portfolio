// Brianna Norton | 1 September 2022 | Shapes

void setup() {
  size(650, 550);
  background(128);
}

void draw() {
  background(128);
  strokeWeight(1.5);
  line(0, 100, width, 100);
  line(0, 200, width, 200);
  line(0, 300, width, 300);
  line(0, 400, width, 400);
  line(0, 500, width, 500);
  line(0, 600, width, 600);
  line(100, 0, 100, height);
  line(200, 0, 200, height);
  line(300, 0, 300, height);
  line(400, 0, 400, height);
  line(500, 0, 500, height);
  line(600, 0, 600, height);
  rectMode(CENTER);
  fill(255, 255, 0);
  rect(80, 80, 120, 120);
  rect(230, 80, 120, 120, 10);
  rect(400, 80, 120, 120, 10, 7, 15, 25);
  rect(550, 80, 120, 80);
  fill(#FF0505);
  ellipse(80, 250, 120, 120);
  ellipse(230, 240, 140, 80);
  ellipse(400, 240, 80, 120);
  fill(#0F31FF);
  triangle(560, 180, 620, 300, 500, 300);
  triangle(40, 320, 130, 450, 20, 420);
  fill(#0FFFFD);
  quad(180, 340, 300, 340, 300, 380, 180, 460);
  quad(400, 340, 430, 400, 400, 450, 370, 400);
  quad(500, 350, 610, 400, 500, 450, 550, 400);
}
