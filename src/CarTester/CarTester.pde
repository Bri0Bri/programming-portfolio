// Brianna Norton 2B | October 25, 2022 | Cars Exercise
Car leaf;
Car oh;
Car[] cars = new Car[80];

void setup() {
  size(displayWidth, displayHeight);
  leaf = new Car();
  oh = new Car();
  for (int i=0; i<cars.length; i++) {
    cars[i] = new Car();
  }
}

void draw() {
  background(132);
  leaf.display();
  leaf.drive();
  oh.display();
  oh.drive();
  for (int i=0; i<cars.length; i++) {
    cars[i].display();
    cars[i].drive();
  }
}
