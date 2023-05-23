// Brianna Norton 2B | October 6, 2022 | Converter App

int f=0;

void setup() {
  size(600, 200);
  background(#B4A1BC);
}

void draw() {
  background(#B4A1BC);
  line(0, 100, width, 100);
  textSize(23);
  fill(random(255), random(255), random(255));
  //text("Converter App", width/2, 30);
  //text("By Brianna Norton", width/2, 50);
  colorMode(HSB);
  if (f>=256) {
    f = 0;
  } else {
    f++;
  }
  fill(f, 256, 256);
  text("Converter App", width/2, 30);
  text("By Brianna Norton", width/2, 50);
  colorMode(RGB);
  fill(256);

  for (int i=0; i<width; i+=40) {
    line(i, 95, i, 105);
    fill(255);
    textSize(9);
    textAlign(CENTER);
    text(i, i, 90);
  }
  fill(0);
  ellipse(mouseX, 100, 5, 5);
  //rect(0,100,mouseX,10);
  text(mouseX, mouseX, 110);
  textSize(12);
  fill(255);
  text("Inch to Cm: " + inchToCm(mouseX), width/2, 140);
  text("Cm to Inch:  " + cmToInch(mouseX), width/2, 160);
}

float inchToCm(float val) {
  val = val*2.54;
  return val;
}

float cmToInch(float val) {
  val = (val/2.54);
  return val;
}
