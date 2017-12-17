class EnvironmentGenerator {
  PImage ground;
  int xOffset = 100;
  int yPos = 500;

  EnvironmentGenerator() {
    ground = loadImage("ground.png");
    ground.resize(1480, 300);
  }

  void graphics() {
    for (int i = 0; i < 50; i++) {
      image(ground, (i * 1480) - xOffset, 500);
    }
    if (paul.health == 0) {
      levels = 3;
    }
    fill(255, 255, 255);
    textSize(14);
    text("HEALTH:", 1035, 66);
    fill(255, 0, 0);
    rect(1100, 50, paul.health, 20);
  }

  void generation() {
    
  }
}