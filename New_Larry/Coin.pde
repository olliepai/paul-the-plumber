class Coin {
  int cX;
  int cY;
  PImage cI;
  public Coin(int xpos, int ypos, PImage cIPNG){
    xpos = cX;
    ypos = cY;
    cIPNG = cI;
  }
  
  void draw() {
    cI = loadImage("coin.png");
    image(cI, cX, cY);
    ai.resize(100,100);
  }
}