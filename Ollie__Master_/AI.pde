class AI {
  int aX;
  int aY;
  PImage ai;
  boolean visible = true; 
  float speedMultiplier = random(5);
  int v = 5;
  int x;
  int y;
  public AI(int xpos, int ypos, PImage ai) {
    aX = xpos;
    aY = ypos;
    ypos = aY;
    this.ai = ai;
    x = aX;
    y = aY;
  }
  void graphics() {
    ai = loadImage("Monsters.png");
    ai.resize(80, 60);
    image(ai, aX, aY);
    
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
  
  void horizontalMove() {
    
    aX += v;
    if(Math.abs(x-aX) > 20*(random(10) + 5)){
      v *= -1;
    }
  }
  
    void verticalMove() {
    
    aY += v;
    if(Math.abs(y-aY) > 20*random(10)){
      v *= -1;
    }
  }
}