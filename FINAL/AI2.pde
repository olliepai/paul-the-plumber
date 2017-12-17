class AI2 {
  int aX;
  int aY;
  PImage ai;
  boolean visible = true; 
  float speedMultiplier = 0.8;
  float distanceX = 250;
  int v = 5;
  int x;
  int y;

  public AI2(int xpos, int ypos) {
    aX = xpos;
    aY = ypos;
    ypos = aY;

    x = aX;
    y = aY;

  }

  void graphics() {
    ai = loadImage("Monsters2.png");
    ai.resize(80, 60);
    image(ai, aX, aY);  
  }
  
  void horizontalMotion() {
    aX += v * speedMultiplier;
      if (Math.abs(x-aX) > distanceX) {
        v *= -1;
      }
  }
  void collideHero() {
    if (visible) {
      if (paul.xPos+80>aX + 10 && paul.xPos < aX+70 && paul.yPos+90 > aY + 10 && paul.yPos < aY+50) {
        paul.health -= 1;
      }
      // pusedocode; if paul has ability enabled and touches an AI
      // set visible to false
    }
  }
}