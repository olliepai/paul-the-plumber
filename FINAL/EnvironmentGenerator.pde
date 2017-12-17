class EnvironmentGenerator {
  PImage ground;
  PImage hlth;
  PImage run;
  PImage storek;
  int xOffset = 100;
  int yPos = 500;
  int offset;
  

  EnvironmentGenerator() {
    ground = loadImage("ground.png");
    ground.resize(1480, 300);
    
  }

  void graphics() {
    
    if (paul.health == 0) {
      levels = 3;
    }
    fill(255, 255, 255);
    textSize(14);
    text("HEALTH:", 1035, 66);
    text("COINS: " + paul.coinCounter, 200, 66);
    fill(255, 0, 0);
    rect(1100, 50, paul.health, 20);
    
    if (keyPressed && key == 'g'){
          background (247,242,85);
    rect(0,0,1280,100);
    rect(0,700,1280,100);
    rect(240,200,800,150);
    rect(240,500,800,150);
    fill (0);
    textSize (70);
    text("Health Insurance", 240, 275);
    textSize (45);
    fill(242,52,34);
    text("increases health", 245, 335);
    fill(0, 0, 0);
    textSize(70);
    text("Track shoes", 245, 580);
    hlth = loadImage ("health.jpg");
    image (hlth, 850,220);
    run = loadImage ("8bite.jpg");
    image (run, 850, 520);

    
    
    
    if (mousePressed && mouseX >=240 && mouseX <=1040 && mouseY >=200 && mouseY<=350 && paul.coinCounter>=2){
      fill (0,0,0);
      text ("run faster", 500,600);
 
     paul.coinCounter = paul.coinCounter - 2;
     paul.velocity = 10;
     
       if (paul.coinCounter < 2){
         fill (113,109,109);
         rect(240,200,800,150);
         text ("not enough money", 500,500);
       }
   }
   if (mousePressed && mouseX >= 240 && mouseX <=1040 && mouseY >=500 && mouseY<-650 && paul.coinCounter >= 1){
     paul.health = paul.health + 50;
     paul.coinCounter = paul.coinCounter - 1;
      //if (paul.coinCounter < 1){
      //  fill (113,109,109);
      //  rect(240,500,800,150);
      //}
   }
  }
  
  }

  void generation() {
    for (int i = 0; i < 50; i++) {
      image(ground, (i * 1480) - xOffset, 500);
    }
  }
}