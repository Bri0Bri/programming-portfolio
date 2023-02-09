// Brianna Norton | November 29, 2022 | SpaceGame | 292 lines of code
import processing.sound.*;
Ship shera;
ArrayList<PowerUp> powerups = new ArrayList<PowerUp>();
ArrayList<Rock> rocks = new ArrayList<Rock>();
ArrayList<Lazer> lazers = new ArrayList<Lazer>();
Timer rockTimer, puTimer;
Star[] stars = new Star[132];
int score, level;
boolean play;

void setup() {
  size(800, 800);
  //lazer = new SoundFile(this, "lazer.mp3");
  shera = new Ship();
  rockTimer = new Timer(1000);
  rockTimer.start();
  puTimer = new Timer(5000);
  puTimer.start();
  for (int i=0; i<stars.length; i++) {
    stars[i] = new Star();
  }
  score = 0;
  level = 1;
  play = false;
}

void draw() {
  if (!play) {
    startScreen();
  } else {
    background(0);

    //render stars
    for (int i=0; i<stars.length; i++) {
      stars[i].display();
      stars[i].move();
    }
    noCursor();
  }
  //adding powerup
  if (puTimer.isFinished()) {
    powerups.add(new PowerUp());
    puTimer.start();
  }

  //render power up
  for (int i = 0; i < powerups.size(); i++) {
    PowerUp pu = powerups.get(i);
    if (pu.intersect(shera)) {
      if (pu.type == 'H') {
        shera.health+=100;
      } else if (pu.type == 'A') {
        shera.ammo+=100;
      } else if (pu.type == 'T') {
        shera.turretCount++;
      }
      powerups.remove(pu);
    }
    if (pu.reachedBottom()) {
      rocks.remove(pu);
    } else {
      pu.display();
      pu.move();
      println(rocks.size());
    }
  }
  // adding rocks
  if (rockTimer.isFinished()) {
    rocks.add(new Rock());
    rockTimer.start();
  }


  //render rocks
  for (int i = 0; i < rocks.size(); i++) {
    Rock r = rocks.get(i);
    if (shera.intersect(r)) {
      shera.health-=r.diam/3;
      score -= r.diam/6;
      //to do: add health to rock
      //to do: make an explosion sound
      //to do: make an explosion animation
      rocks.remove(r);
    }
    if (r.reachedBottom()) {
      rocks.remove(r);
    } else {
      r.display();
      r.move();
      println(rocks.size());
    }
  }
  //render lazers
  // Render Laser
  for (int i = lazers.size()-1; i >= 0; i--) {
    Lazer l = lazers.get(i);
    for (int j = 0; j < rocks.size(); j++) {
      Rock r = rocks.get(j);
      if (l.intersect(r)) {
        score+=10;
        ////Level increase
        //if(score%1000 == 0) {
        //  level+=1;
        //  s1.ammo +=100;
        //}
        rocks.remove(r);
        lazers.remove(l);
        //todo call the explosion animation
        // add a sound of explosion
      }
    }
    if (l.reachedTop()) {
      lazers.remove(l);
    } else {
      l.display();
      l.move();
    }
  }

  //render ship
  shera.display();
  shera.move(mouseX, mouseY);
  infoPanel();

  if (shera.health<1) {
    gameOver();
  }
}

void mousePressed() {
  if (shera.fire() && shera.turretCount == 1) {
    lazers.add(new Lazer(shera.x, shera.y));
    println(lazers.size());
  } //else if (shera.fire() && shera.turretCount == 2)
  //  lazers.add(new Lazer(shera.x-50, shera.y));
  //lazers.add(new Lazer(shera.x, shera.y));
  //println(lazers.size());
}
void keyPressed() {
}

void infoPanel() {
  fill(128, 128);
  rectMode(CENTER);
  rect(width/2, 25, width, 50);
  fill(255);
  textSize(23);
  text("Score: " + score +
    " | Health " + shera.health +
    " | Level " + level +
    " | Ammo: " +  shera.ammo, width/3.5, 40);
}

void startScreen() {
  background(0);
  fill(255);
  textAlign(CENTER);
  text(" Space Game \n Press any key to begin..", width/2, height/2);
  if (keyPressed) {
    play = true;
  }
}

void gameOver() {
  background(0);
  fill(255);
  text("Game Over! \n try again next time", width/2, height/2);
  if (keyPressed) {
    //play = false;
    noLoop();
  }
}
