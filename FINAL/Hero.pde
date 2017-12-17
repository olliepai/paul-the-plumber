class Hero {
  int health = 100;
  PImage paul;
  int xPos = 200;
  int yPos = 600;
   int coinCounter = 0;
   int velocity = 5;

  Hero() {
    float gravity = 0.098;
    float ySpeed = 1;
    boolean isJumping = false;  
    paul = loadImage("paul.png");
    paul.resize(80, 90);
  }

  void graphics() {
    image(paul, xPos, yPos);
  }

  void movement() {
    if (keyPressed && key == 'd') {
      xPos += velocity;
    }

    if (keyPressed && key == 'a') {
      xPos -= velocity;
    }

    if (keyPressed && key == 'w') {
      yPos -= velocity;
    }

    if (keyPressed && key == 's') {
      yPos += velocity;
    }

    if (yPos < 450) {
      yPos = 450;
    }
    if(yPos+80 > 800){
      yPos = 720;
    }

    if (xPos + 80 > 1280) {
      environment.xOffset += 5;
      ai1.aX -= 5;
      ai1.x -= 5;
      ai2.aX -= 5;
      ai2.x -= 5;
      ai3.aX -= 5;
      ai3.x -= 5;
      ai4.aX -= 5;
      ai4.x -= 5;
      ai5.aX -= 5;
      ai5.x -= 5;
      ai6.aX -= 5;
      ai6.x -= 5;
      ai7.aX -= 5;
      ai7.x -= 5;
      ai8.aX -= 5;
      ai8.x -= 5;
      ai9.aX -= 5;
      ai9.x -= 5;
      ai10.aX -= 5;
      ai10.x -= 5;
      ai11.aX -= 5;
      ai11.x -= 5;
      ai12.aX -= 5;
      ai12.x -= 5;
      ai13.aX -= 5;
      ai13.x -= 5;
      ai14.aX -= 5;
      ai14.x -= 5;
      ai15.aX -= 5;
      ai15.x -= 5;
      c1.cX -= 5;
      c2.cX -= 5;
      c3.cX -= 5;
      c4.cX -= 5;
      c5.cX -= 5;
      c6.cX -= 5;
      c7.cX -= 5;
      c8.cX -= 5;
      c9.cX -= 5;
      c10.cX -= 5;
      xPos = 1200;
    } else if (xPos < 0) {
      xPos = 0;
    }
  }
}