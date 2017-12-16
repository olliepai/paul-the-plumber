class Coin {
  int cX;
  int cY;
  PImage cI;
  boolean visible = true;
  public Coin(int xPos, int yPos, PImage cIPNG) {
    xPos = cX;
    yPos = cY;
    cIPNG = cI;
  }

  void draw() {
    cI = loadImage("coin.png");
    image(cI, cX, cY);
    ai.resize(100, 100);
  }
  void collideHero() {
    if (visible) {
      if (paul.xPos+80>cX && paul.xPos+80 < cX+100 && paul.yPos+90 > cY && paul.yPos+90 < cY+100) {
        paul.coinCounter += 1;
        visible = false;
      }
    }
  }
}