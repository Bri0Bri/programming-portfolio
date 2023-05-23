// Brianna Norton | October 18, 2022 | Arrays Exercises
Button bonbon;
Button bonbon2;
Button[] bonbons = new Button[10];
void setup() {
  size(200, 200);
  bonbon  = new Button(20, 20, 75, 40);
  bonbon2  = new Button(20, 100, 75, 40);
  bonbons[0] = new Button(20,170,75,40);
}

void draw() {
  background(40);
  bonbon.display();
  bonbon2.display();
  bonbons[0].display();
}
