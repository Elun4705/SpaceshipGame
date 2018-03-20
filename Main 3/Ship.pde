class Ship {
  PImage img;
  int x,y,w,h;
  boolean up = false;
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