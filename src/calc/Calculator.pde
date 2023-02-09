// Brianna Norton | Calculator | October 2022
Button[] numButtons = new Button[10];
Button[] opButtons = new Button[14];
String dVal =  "0.0";
float l, r, result;
char op = ' ';
boolean left = true;

void setup() {
  size(350, 500);
  numButtons[0] = new Button(120, 420, 50, 50, '0');
  numButtons[1] = new Button(60, 360, 50, 50, '1');
  numButtons[2] = new Button(120, 360, 50, 50, '2');
  numButtons[3] = new Button(180, 360, 50, 50, '3');
  numButtons[4] = new Button(60, 300, 50, 50, '4');
  numButtons[5] = new Button(120, 300, 50, 50, '5');
  numButtons[6] = new Button(180, 300, 50, 50, '6');
  numButtons[7] = new Button(60, 240, 50, 50, '7');
  numButtons[8] = new Button(120, 240, 50, 50, '8');
  numButtons[9] = new Button(180, 240, 50, 50, '9');
  opButtons[0] = new Button(60, 420, 50, 50, '.'); // decimal
  opButtons[1] = new Button(180, 420, 50, 50, '±'); // positive negative
  opButtons[2] = new Button(270, 420, 110, 50, '='); // equals
  opButtons[3] = new Button(240, 360, 50, 50, '+'); // adding
  opButtons[4] = new Button(240, 300, 50, 50, 'x'); // multiply
  opButtons[5] = new Button(240, 240, 50, 50, '%'); // percentage
  opButtons[6] = new Button(180, 180, 50, 50, ' '); // left parenthasis
  opButtons[7] = new Button(240, 180, 50, 50, ' '); // right parenthasis
  opButtons[8] = new Button(300, 360, 50, 50, '-'); // minus
  opButtons[9] = new Button(300, 300, 50, 50, '÷'); // division
  opButtons[10] = new Button(300, 240, 50, 50, 's'); // squared
  opButtons[11] = new Button(300, 180, 50, 50, 'C'); // clear
  opButtons[12] = new Button(120, 180, 50, 50, '√'); // square root
  opButtons[13] = new Button(60, 180, 50, 50, 'π'); // pi
}

void draw() {
  background(#4E4355);
  updateDisplay();
  for (int i=0; i<numButtons.length; i++) {
    numButtons[i].display();
    numButtons[i].hover(mouseX, mouseY);
  }
  for (int i=0; i<opButtons.length; i++) {
    opButtons[i].display();
    opButtons[i].hover(mouseX, mouseY);
  }
}

void updateDisplay() {
  fill(#E2D3E8);
  rectMode(CENTER);
  rect(width/2, 95, width-50, 100, 10);
  fill(255);
  textAlign(RIGHT);
  if (dVal.length() < 23) {
    textSize(23);
  } else if (dVal.length() < 26) {
    textSize(20);
  } else if (dVal.length() < 29) {
    textSize(17);
  } else {
    textSize(14);
  }
  text(dVal, width-40, 130);
}

void mouseReleased() {
  for (int i = 0; i<numButtons.length; i++) {
    if (numButtons[i].on && dVal.length() < 100) {
      if (dVal.equals("0.0") || dVal.equals("+")) {
        dVal = str(numButtons[i].val);
      } else {
        dVal += str(numButtons[i].val);
      }
      if (left) {
        l = float(dVal);
      } else {
        r = float(dVal);
      }
    }
  }
  for (int i = 0; i<opButtons.length; i++) {
    if (opButtons[i].on && opButtons[i].val == 'C') {
      dVal =  "0.0";
      l = 0.0;
      r = 0.0;
      result = 0.0;
      op = ' ';
      left = true;
    } else if (opButtons[i].on && opButtons[i].val == '+') {
      op = '+';
      left = false;
      dVal = "0.0";
    } else if (opButtons[i].on && opButtons[i].val == '-') {
      op = '-';
      left = false;
      dVal = "0.0";
    } else if (opButtons[i].on && opButtons[i].val == '=') {
      preformCalculation();
    } else if (opButtons[i].on && opButtons[i].val == 'x') {
      op = 'x';
      left = false;
      dVal = "0.0";
    } else if (opButtons[i].on && opButtons[i].val == '÷') {
      op = '÷';
      left = false;
      dVal = "0.0";
    } else if (opButtons[i].on && opButtons[i].val == '%') {
      if (left) {
        l = l/100;
        dVal = str(l);
      } else {
        r = r/100;
        dVal = str(r);
      }
    } else if (opButtons[i].on && opButtons[i].val == '√') {
      if (left) {
        l = sqrt(l);
        dVal = str(l);
      } else {
        r = sqrt(r);
        dVal = str(r);
      }
    } else if (opButtons[i].on && opButtons[i].val == 'π') {
      if (left) {
        l = PI;
        dVal = str(l);
      } else {
        r = PI;
        dVal = str(r);
      }
    } else if (opButtons[i].on && opButtons[i].val == '±') {
      if (left) {
        l = l*-1;
        dVal = str(l);
      } else {
        r = r*-1;
        dVal = str(r);
      }
    } else if (opButtons[i].on && opButtons[i].val == '.') {
      op = '.';
    } else if (opButtons[i].on && opButtons[i].val == 's') {
      if (left) {
        l = l*l;
        dVal = str(l);
      } else {
        r = r*r;
        dVal = str(r);
      }
    }
    println("L:" + l + " Op:" + op + " R:" + r + " Result:" + result + " Left:" + left);
  }
}
void preformCalculation() {
  if (op == '+') {
    result = l + r;
  } else   if (op == '-') {
    result = l - r;
  } else   if (op == 'x') {
    result = l * r;
  } else   if (op == '÷') {
    result = l / r;
  }
  dVal = str(result);
  l =  result;
  left = true;
}
