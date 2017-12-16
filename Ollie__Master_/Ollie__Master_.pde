int levels;
Hero paul;
Ground ground;
AI monster1 = new AI(

boolean[] keys = new boolean[1024];

void setup() {
  size(1280, 800);
  levels = 2;
  
  paul = new Hero();
  ground = new Ground();
}

void draw() {
  background(16, 20, 77);
  //main menu
  if (levels == 0) {
    
  } 
  //controls menu
  else if (levels == 1) {
   
  }
  //game menu
  else if (levels == 2) {
    ground.graphics();
    ground.generation();

    paul.graphics();
    paul.movement();
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