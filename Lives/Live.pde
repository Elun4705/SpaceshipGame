//By Nate Payne

class Live {
  int live;
  PImage testup;
  int l;
    //Constructor
    Live(int l) {
      this.l=l;
    testup = loadImage("testup.png");
  }

  void display() {
    if (l == 3) {
      image(testup, 50, 50, 50, 50);
      image(testup, 50, 125, 50, 50);
      image(testup, 50, 200, 50, 50);
    } else if (l == 2) {
      image(testup, 50, 50, 50, 50);
      image(testup, 50, 125, 50, 50);
    } else if (l == 1) {
      image(testup, 50, 50, 50, 50);
    } else {
      death();
    }
      
      
  }
}
