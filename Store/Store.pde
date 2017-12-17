PImage storek;
PImage hlth;
PImage run;

void setup(){
  size (1280, 800);
}

void draw(){
  if (keyPressed && key == 'g'){
    storek = loadImage ("shtore.jpg");
    image (storek, 0, 0);
    rect(0,0,1280,100);
    rect(0,700,1280,100);
    fill(255,200);
    rect(240,200,800,150);
    rect(240,500,800,150);
    fill (0);
    textSize (70);
    text("Health Insurance", 240, 275);
    textSize (45);
    fill(242,52,34);
    text("increases health", 245, 335);
    text("track shoes", 245, 555);
    hlth = loadImage ("health.jpg");
    image (hlth, 850,220);
    run = loadImage ("8bite.jpg");
    image (run, 850, 620);
    
    
    if (mousePressed && mouseX >=240 && mouseX <=1040 && mouseY >=200 && mouseY<=350 && cCount>=10){
      fill (0,0,0);
      text ("
     //health = health + 50;
     //cCount = cCount - 10;
     
       if (cCount < 10){
         fill (113,109,109);
         rect(240,200,800,150);
         text (
       }
   }
   if (mousePressed && mouseX >= 240 && mouseX <=1040 && mouseY >=500 && mouseY<-650){
     //health = health + 50;
     //cCount = cCount - 10;
      if (cCount < 15){
        fill (113,109,109);
        rect(240,500,800,150);
      }
   }
  }
}