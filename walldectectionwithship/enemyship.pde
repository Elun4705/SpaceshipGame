class enemyship {
  PImage img;
  int y = 250;
  float r;

  void display() {
    background(255);
    img = loadImage("PurpleSpaceship.png");
    r = random(1, 11);
    image(img, 900, y, 70, 70);
    if (r < 6) {
      y--;
    } else {
      y++;
    }
  }
}