// Brianna Norton | September 13 2022 | Timeline Project
void setup() {
  size(900, 400);
  background(127);
}

void draw() {
  background(127);

  // Render Title
  fill(222);
  textAlign(CENTER);
  textSize(40);
  text("Computer History Timeline", width/2, 60);
  textSize(23);
  text("By Brianna Norton", width/2, 90);

  //Render Timeline
  stroke(0);
  strokeWeight(2);
  line(100, 250, 850, 250);
  fill(0);
  text("1935", 80, 250);
  text("1968", 860, 250);
  //Who and what
  // Render Timeline Items
  histEvent(190, 200, "Z2 - 1940", "An electromechanical computer that was completed by Konard Zuse. He replaced the arthemtic and control \n logic with electrical relay circuits.", true);
  histEvent(400, 200, "LEO - 1951", "By J. Lyons and Co. First computer used for commercial business applications. 500kHz with most instructions taking 1.5 ms to execute.", true);
  histEvent(600, 200, "Ferranti Mark1-1951", "By British electrical engineering firm Ferranti Ltd. Worlds first commercially available digital computer. \n Instead of the original mappiung from holes to binary digits, \n the new machines mapped digites to holes to produce more simpler mapping.", true);
  histEvent(770, 200, "AGC - 1966", "The manufactor was Raytheon. Provided computation and electronic interfaces for guidance, navigation and control of the space craft. \n Astronauts communicated with the AGC using numeric display and a keyboard called DSKY.", true);
  histEvent(140, 300, "Torpedo Data - 1938", "Robert Whitehead developed the modern torpedo in the 1860's. An early electromechanical anolog computer used \n for torpedo fire-control on American submarines during World War 2.", false);
  histEvent(300, 300, "ENIAC - 1945", "The first programmable, electronic, general purpose digital computer. \n It was turning complete and was able to solve numerical problems through reprogramming. \n Built out of vacuum tubes, relays, resistors, capacitors and hand-soldered joints.", false);
  histEvent(460, 300, "Manchester Mark 1 - 1948", " Developed at the Victoria University of Manchester, england from the Machester Baby. \n One of the earliests stored program computers.  To allow researchers to gain experiance in the practical use of computers.", false);
  histEvent(660, 300, "Transistor Computer-1953", "Uses discrete transistors instead of vacuum tubes. It revolutionized filed of electronics and \n paved the way for smaller and cheaper radioes, calculators, and computers.", false);
}

void histEvent(int x, int y, String title, String detail, boolean top) {
  if (top == true) {
    line(x, y, x+20, y+50);
  } else {
    line(x, y, x+20, y-50);
  }
  rectMode(CENTER);
  fill(66);
  rect(x, y, 150, 30, 8);
  fill(244);
  textSize(16);
  text(title, x, y+7);
  if (mouseX > x-75 &&  mouseX < x+75 && mouseY > y-15 && mouseY < y+15) {
    fill(0);
    text(detail, width/2, 340);
  }
}
