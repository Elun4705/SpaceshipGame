class Ship {
  PImage img;
  int x, y, w, h;
  boolean up = true;
  int r;

  Ship(int x, int y, int w, int h) {
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
  }

  void display() {
    img = loadImage("PurpleSpaceship.png");
    image(img, x, y, w, h);
  }
  void movement() {
    if (up) {
      y--;
      if (y <= r) {
        up = true;
      }
    } else {
      y++;
    }
  }
  void setrandom() {
    up = !up;
  }
}