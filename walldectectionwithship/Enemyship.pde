class Enemyship {
  PImage img;
  float r;
  int x, y, w, h;

  Enemyship(int x, int y, int w, int h) {
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
  }

  void display() {
    img = loadImage("PurpleSpaceship.png");
    r = random(1, 11);
    image(img, x, y, w, h);
    if (r < 6) {
      y--;
    } else {
      y++;
    }
  }
}