class Hero {
  int health = 100;
  PImage paul;
  int xPos = 200;
  int yPos = 600;
  int coinCounter = 0;


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
      xPos += 5;
    }

    if (keyPressed && key == 'a') {
      xPos -= 5;
    }

    if (keyPressed && key == 'w') {
      yPos -= 5;
    }

    if (keyPressed && key == 's') {
      yPos += 5;
    }
    
    if (yPos < 450) {
      yPos = 450;
    }
    
    if (xPos + 80 > 1280) {
      environment.xOffset += 5;
      xPos = 1200;
    } else if (xPos < 0) {
      xPos = 0;
    }
  }
}