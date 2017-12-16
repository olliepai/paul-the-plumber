class AI {
  int aX;
  int aY;
  PImage ai;
  public AI(int xpos, int ypos, PImage aiPNG) {
    xpos = aX;
    ypos = aY;
    aiPNG = ai;
  }
  void draw() {
    ai = loadImage("Monsters.png");
    image(ai, aX, aY);
    ai.resize(100, 120);
  }
  void collideHero() {
    if (paul.xPos+80>aX && paul.xPos+80 < aX+100 && paul.yPos+90 > aY && paul.yPos+90 < aY+120) {
      paul.health -= 1;
    }
  }
}