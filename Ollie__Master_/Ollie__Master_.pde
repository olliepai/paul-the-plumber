int levels;
int coinY;
Hero paul;
EnvironmentGenerator environment;

PImage mb;
PImage sc;
float screen;
PImage ai;
PImage grave;
PImage coin;
AI monster1;
Coi"{ oid setup() {
  size(1280, 800);
  levels = 0;

  paul = new Hero();
  environment = new EnvironmentGenerator();
  monster1 = new AI(700,600, ai);
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
      paul.coinCounter = 0;
      paul.health = 100;
      paul.xPos = 200;
      paul.yPos = 600;
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
    text("Coins: " + paul.coinCounter, 50,50);
    coin = loadImage("coin.png");
    for(int i = 0; i < coins.length; i++){
      coins[i] = new Coin((int)random(1280), (int)random(300)+500, coin);
      coins[i].draw();
      coins[i].collideHero();
    }
    environment.graphics();
    environment.generation();

    paul.graphics();
    paul.movement();
    
    monster1.graphics();
    monster1.collideHero();
    monster1.horizontalMove();
  }
  
  else if (levels == 3) {
    grave = loadImage("grave.jpg");
    grave.resize(1280, 800);
    background(grave);
    fill (255, 255, 255, 160);
    rect (880, 650, 300, 100);
    fill (0, 0, 0, 200);
    textSize(75);
    text ("BACK", 925, 722);
    if (mousePressed && mouseX >= 880 && mouseX <= 1080 && mouseY >= 650 && mouseY <= 750) {
      levels = 0;
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