int levels = 2;
int pX = 800;
int pY = 400;
int hX = 200;
int hY = 425;
float move_time;
float jumpInit;
PImage ai;
PImage coin;
boolean jump = false;
AI monster1 = new AI(800,400, ai);
void setup() {
  size(1280,800);
  ai = loadImage("Monsters.png");
}

void draw() {
  if(levels == 2){
      background(0,0,0);
      ai.resize(100,100);
      fill(255,200,200);
      rect(hX,hY, 50,75);
      move_time = System.currentTimeMillis();
      if(keyPressed && key == 'd'){
        hX+=2;
      }
      if(keyPressed && key == 'a'){
        hX-=2;
      }
  }
}



 