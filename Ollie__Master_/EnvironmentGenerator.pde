class Ground {
  PImage ground;
  int xOffset = 100;
  int yPos = 500;

  Ground() {
    ground = loadImage("ground.png");
    ground.resize(1480, 300);
  }

  void graphics() {
    for (int i = 0; i < 50; i++) {
      image(ground, (i * 1480) - xOffset, 500);
    }
  }

  void generation() {
  }
}