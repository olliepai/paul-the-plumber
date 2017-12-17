class Coin {
  int cX;
  int cY;
  
  boolean visible = true;
  
  public Coin(int xPos, int yPos) {
    cX = xPos;
    cY = yPos;

  }
  
  void graphics() {
    cI.resize(10, 10);
    image(cI, cX, cY);
  }
  
  void collideHero() {
    if (visible) {
      if (paul.xPos+80>cX && paul.xPos < cX+100 && paul.yPos+90 > cY && paul.yPos < cY+100) {
        paul.coinCounter += 1;
      }
    }
  }
}
    