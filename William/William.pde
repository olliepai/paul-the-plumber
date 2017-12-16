PImage mb;
PImage sc;
float screen;

void setup(){
size(1280,800);
}

void draw (){
  mb = loadImage ("background.jpg");
  image (mb, 0, 0);
  
  if (screen == 0) {
  fill(255);
  textSize(100);
  text ("Paul the Plumber", 220,250);
  fill(255,255,255,170);
  rect(350,350,590,100);
  rect(350,550,590,100);
  fill (252,233,165);
  text("START", 490,435);
  text("CONTROLS", 385,635);
  if(mousePressed && mouseX>=350 && mouseX<=940 && mouseY>=350 && mouseY <=450){
    
  }
   if(mousePressed && mouseX>=350 && mouseX<=940 && mouseY>=550 && mouseY <650){
     screen = 2;
  }
  if(mousePressed) {
   println("x: " + mouseX, "y: " + mouseY); 
  }
  } 
  else if (screen == 1){
    
}
  else if (screen == 2) {
  sc = loadImage ("sk.jpg");
  image (sc, 0, 0);
  textSize(75);
  fill (255);
  text ("W, A, S, D controls for direction", 75, 300);
  text ("BUTTON to attack", 70, 600);
  fill (255, 255,255, 160);
  rect (880, 650, 300, 100);
  fill (0,0,0,200);
  text ("BACK", 935, 733);
  if (mousePressed && mouseX >= 880 && mouseX <= 1080 && mouseY >= 650 && mouseY <= 750){
    screen = 0;
  }
      }
    }