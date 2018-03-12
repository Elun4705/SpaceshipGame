//Must fly high enough to get to other planet to win

PImage photo2;


class Spaceship {

  //Member Variables
  color c;
  int x;
  int y;
  //
  float scale = 4.3;
  //Constructor
  Spaceship(color tempC) {
    photo2 = loadImage("Purpleship.png");
    c = tempC;
    x = 100;
    y = 100;
  }  
  void setLocation(int x, int y) {
    this.x = x;
    this.y = y;
  }
  void display() {
    image(photo2, 200, 200);
  }
}