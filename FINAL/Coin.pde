class Coin {
  int cX;
  int cY;
  
  boolean visible = true;
  
  public Coin(int xPos, int yPos) {
    cX = xPos;
    cY = yPos;

  }
  
  void graphics() {
    if(visible){
    cI.resize(50, 50);
    image(cI, cX, cY);
    }
  }
  
  void collideHero() {
    if (visible) {
      if (paul.xPos+80>cX && paul.xPos < cX+100 && paul.yPos+90 > cY && paul.yPos < cY+100) {
        paul.coinCounter += 1;
        visible = false;
      }
    }
  }
}
    