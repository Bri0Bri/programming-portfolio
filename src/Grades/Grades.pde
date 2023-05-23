// Brianna Norton 2B | September 20, 2022 | Grades
float val;

void setup() {
  size(1000, 200);
  val = 0.0;
}

void draw() {
  background(132);
  strokeWeight(1);
  //text("2.000", 500, height/2);
  //text("2.400", 600, height/2);
  //text("2.800", 700, height/2);
  //text("3.200", 800, height/2);
  //text("3.600", 900, height/2);
  //text("1.600", 400, height/2);
  //text("1.200", 300, height/2);
  //text("0.800", 200, height/2);
  //text("0.400", 100, height/2);
  //text("0.000", 0, height/2);
  //line(500, 95, 500, height/2);
  //line(300, 95, 300, height/2);
  //line(400, 95, 400, height/2);
  //line(200, 95, 200, height/2);
  //line(600, 95, 600, height/2);
  //line(700, 95, 700, height/2);
  //line(800, 95, 800, height/2);
  //line(900, 95, 900, height/2);
  //line(100, 95, 100, height/2);

  //line(500, 35, 500, height/2);
  //line(300, 35, 300, height/2);
  //line(400, 35, 400, height/2);
  //line(200, 35, 200, height/2);
  //line(600, 35, 600, height/2);
  //line(700, 35, 700, height/2);
  //line(800, 35, 800, height/2);
  //line(900, 35, 900, height/2);
  //line(100, 35, 100, height/2);



  val = mouseX/250.0;
  noCursor();
  line(0, 100, width, 100);
  ellipse(mouseX, 100, 5, 5);
  textAlign(CENTER);
  text(mouseX, mouseX, 70);
  text(val, mouseX, 130);
  text("Letter Grade: " + calcGrade(val), width/2, 150);
  text("Grades: By Brianna Norton", width/2, 50);
  textSize(15);
  for (int i=0; i<width; i+=50) {
    line(i, 95, i, 105);
    textSize(10);
    text(i/250.0, i, 85);
  }
}

String calcGrade(float grade) {
  String letterGrade = "";
  if (grade>3.50) {
    letterGrade = "A";
  } else if (grade >= 3.0) {
    letterGrade =  "A-";
  } else if (grade >= 2.84) {
    letterGrade =  "B+";
  } else if (grade >= 2.67) {
    letterGrade =  "B";
  } else if (grade >= 2.5) {
    letterGrade =  "B-";
  } else if (grade >= 2.34) {
    letterGrade =  "C+";
  } else if (grade >= 2.17) {
    letterGrade =  "C";
  } else if (grade >= 2.0) {
    letterGrade =  "C-";
  } else if (grade >= 1.66) {
    letterGrade =  "D+";
  } else if (grade >= 1.33) {
    letterGrade =  "D";
  } else if (grade >= 1.0) {
    letterGrade =  "D-";
  } else {
    letterGrade =  "F";
  }
  return letterGrade;
}
