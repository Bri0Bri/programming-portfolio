// Brianna Norton 2B | October 4, 2022 | Temp Converter
void setup() {
}

void draw() {
  println(farToCel(89.6));
  println(celToFar(32.0));
}

float farToCel(float val) {
  val = (val-32)*5/9;
  return val;
}

float celToFar(float val) {
  val = (val*9/5)+32;
  return val;
}
