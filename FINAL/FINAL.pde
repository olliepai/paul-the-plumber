int levels;

Hero paul;
EnvironmentGenerator environment;

PImage mb;
PImage sc;
PImage cI;
float screen;

PImage grave;


boolean[] keys = new boolean[1024];

AI ai1 = new AI((int)random(500)- 60, (int)random(300) + 500 - 80);
AI ai2 =  new AI((int)random(1280)- 60 + 1500, (int)random(300) + 500 - 80);
AI ai3 =  new AI((int)random(1280)-60 + 3000, (int)random(300) + 500 - 80);
AI ai4 =  new AI((int)random(1280)-60 + 4500, (int)random(300) + 500 - 80);
AI ai5 =  new AI((int)random(1280)-60 + 6000, (int)random(300) + 500 - 80);
AI2 ai6 = new AI2((int)random(500)- 60 + 7500, (int)random(300) + 500 - 80);
AI2 ai7 =  new AI2((int)random(1280)- 60 + 9000, (int)random(300) + 500 - 80);
AI2 ai8 =  new AI2((int)random(1280)-60 + 10500, (int)random(300) + 500 - 80);
AI2 ai9 =  new AI2((int)random(1280)-60 + 12000, (int)random(300) + 500 - 80);
AI2 ai10 =  new AI2((int)random(1280)-60 + 13500, (int)random(300) + 500 - 80);
Coin c1 = new Coin((int)random(500)- 60 + 1500, (int)random(300) + 500 - 80);
Coin c2 = new Coin((int)random(500)- 60 + 3000, (int)random(300) + 500 - 80);
Coin c3 = new Coin((int)random(500)- 60 + 4500, (int)random(300) + 500 - 80);
Coin c4 = new Coin((int)random(500)- 60 + 6000, (int)random(300) + 500 - 80);
Coin c5 = new Coin((int)random(500)- 60 + 7500, (int)random(300) + 500 - 80);
void setup() {
  size(1280, 800);
  levels = 0;
      cI = loadImage("coin.png");

  paul = new Hero();
  environment = new EnvironmentGenerator();
}

void draw() {
  //main menu
  if (levels == 0) {
    mb = loadImage ("background.png");
    mb.resize(1280, 800);
    image (mb, 0, 0);

    fill(255);
    textSize(100);
    text ("Paul the Plumber", 220, 250);
    fill(255, 255, 255, 170);
    rect(350, 350, 590, 100);
    rect(350, 550, 590, 100);
    fill (252, 233, 165);
    text("START", 490, 435);
    text("CONTROLS", 385, 635);
    if (mousePressed && mouseX>=350 && mouseX<=940 && mouseY>=350 && mouseY <=450) {
      levels = 2;
    }
    if (mousePressed && mouseX>=350 && mouseX<=940 && mouseY>=550 && mouseY <650) {
      levels = 1;
    }
    if (mousePressed) {
      println("x: " + mouseX, "y: " + mouseY);
    }
  } 
  //controls menu
  else if (levels == 1) {
    sc = loadImage ("sk.jpg");
    sc.resize(1280, 800);
    background(sc);
    textSize(75);
    fill (255);
    text ("W, A, S, D controls for direction", 75, 300);
    text ("BUTTON to attack", 70, 600);
    fill (255, 255, 255, 160);
    rect (880, 650, 300, 100);
    fill (0, 0, 0, 200);
    text ("BACK", 935, 733);
    if (mousePressed && mouseX >= 880 && mouseX <= 1080 && mouseY >= 650 && mouseY <= 750) {
      levels = 0;
    }
  }
  //game menu
  else if (levels == 2) {
    background(16, 20, 77);
    environment.graphics();
    environment.generation();

    paul.graphics();
    paul.movement();

    ai1.graphics();
    ai1.collideHero();
    ai1.horizontalMotion();
    ai2.graphics();
    ai2.collideHero();
    ai2.horizontalMotion();
    ai3.graphics();
    ai3.collideHero();
    ai3.horizontalMotion();
    ai4.graphics();
    ai4.collideHero();
    ai4.horizontalMotion();
    ai5.graphics();
    ai5.collideHero();
    ai5.horizontalMotion();
    c1.graphics();
    c1.collideHero();
    c2.graphics();
    c2.collideHero();
    c3.graphics();
    c3.collideHero();
    c4.graphics();
    c4.collideHero();
    c5.graphics();
    c5.collideHero();
  } else if (levels == 3) {
    grave = loadImage("grave.jpg");
    grave.resize(1280, 800);
    background(grave);
    fill (255, 255, 255, 160);
    rect (880, 650, 300, 100);
    fill (0, 0, 0, 200);
    textSize(75);
    text ("BACK", 935, 733);
    if (mousePressed && mouseX >= 880 && mouseX <= 1080 && mouseY >= 650 && mouseY <= 750) {
      levels = 0;
      paul.health = 100;
      paul.coinCounter = 0;
      paul.xPos = 200;
      paul.yPos = 600;
    }
  }
}

void keyPressed() {
  if (!(key == CODED)) {
    keys[key] = true;
  }
}

void keyReleased() {
  if (!(key == CODED)) {
    keys[key] = false;
  }
}