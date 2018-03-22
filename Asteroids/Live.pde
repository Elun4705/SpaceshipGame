class Live {
  int live;
  PImage testup;
  int li;
    //Constructor
    Live(int li) {
      this.li=li;
    testup = loadImage("testup.png");
  }

  void display() {
    if (li == 3) {
      image(testup, 50, 925, 50, 50);
      image(testup, 125, 925, 50, 50);
      image(testup, 200, 925, 50, 50);
    } else if (li == 2) {
      image(testup, 50, 925, 50, 50);
      image(testup, 125, 925, 50, 50);
    } else if (li == 1) {
      image(testup, 50, 925, 50, 50);
    } else {
      //death();
    }
      
      
  }
}