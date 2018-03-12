PImage photo;
class Laser {
  float lx, ly, lspeed; //Laser
  float rx, ry, rspeed; //Rocket
  color lc;
  float val; 
  int damage = 100;
  // Constructor 
  Laser(float tempx, float tempy, float templspeed) {
    lx = tempx;
    ly =tempy;
    lspeed = templspeed;
    lc = color(255, 0, 0);
    photo = loadImage("Lazer1.png");
  }

  // Fires the Laser
  void fire() {
    ly -= speed;
  }

  // Determine if Laser Leaves the Screen
  boolean Border() {
    if (ly < 0) { 
      return true;
    } else {
      return false;
    }
  }

  // Draws the Laser
  void display() {
    fill(lc);
    noStroke();
    image(photo, lx, ly);
    //rect(lx, ly, 100, 100);
    for (int i = 2; i < val; i++ ) {
      //image(photo, 250, 250);
    }
  }

  // Removes a Missed Laser
  void miss() {
 if (ly>height) {
      ly = 0;
      lx = 0;
      lspeed = 0;
  }
  }
  void travel() {
    ly = ly +lspeed;      
  }
}