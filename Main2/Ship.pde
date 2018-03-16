class Ship {
  PImage img;
  int y = 250;
  boolean up = false;
  int r;
  void display() {
    img = loadImage("PurpleSpaceship.png");
    image(img, 900, y, 70, 70);
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
    if (y <= r) {
      
    }
    //if (r < 5) {
    //  for (int times = 0; times<50; times++) {
    //    y--;
    //  }
    //} else {
    //  for (int times = 0; times<50; times++) {
    //    y++;
    //  }
    //}
  }
  void setrandom() {
    r = int(random(200, 400));
    up = !up;
  }
}