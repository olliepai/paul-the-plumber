class Coin {
  int cX;
  int cY;
  PImage cI;
  boolean visible = true;
  public Coin(int xPos, int yPos, PImage cIPNG) {
    cX = xPos;
    cY = yPos;
    cI = cIPNG;
  }

  void draw() {
    cI = loadImage("coin.png");
    image(cI, cX, cY);
    cI.resize(10, 10);
  }
  void collideHero() {
    if (visible) {
      if (paul.xPos+80>cX && paul.xPos < cX+100 && paul.yPos+90 > cY && paul.yPos < cY+100) {
        paul.coinCounter += 1;
      }
    }
  }
}