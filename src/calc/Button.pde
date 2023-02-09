// Brianna Norton | Oct 2022 | Button
class Button {
  //member variable
  int x, y, w, h;
  color c1, c2;
  char val;
  boolean on;

  //contructor
  Button(int x, int y, int w, int h, char val) {
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
    this.val = val;
    c1 = color(#A178A7);
    c2 = color(#766379);
    on =  false;
  }
  //member methods
  void display() {
    if (on) {
      fill(c2);
    } else {
      fill(c1);
    }
    rectMode(CENTER);
    rect(x, y, w, h, 20);
    fill(255);
    textAlign(CENTER);
    textSize(20);
    fill(255);
    if (val == 'C') {
      textSize(16);
      text("Clear", x, y+10);
    } else if (val == 's') {
      textSize(16);
      text("x²", x, y+10);
    } else {
      text(val, x, y);
    }
  }

  void hover(int mx, int my) {
    on = (mx>x-w/2 && mx<x+w/2 && my>y-h/2 && my<y+h/2);
  }
}
