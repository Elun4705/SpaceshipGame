class Ship {
  //Member variables
  int size;
  PImage test;
  int x, y;
  //laser gun;
  
  //Constructor
  Ship(int size, int p) {
    this.size = size;
    test = loadImage("test.png");
  }
  
  void display() {
    image(test, mouseX-25, mouseY-25, 50, 50);
  }
}