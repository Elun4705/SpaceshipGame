class Powerups {
  //Boolean invi, shield;
  Boolean invi = false;
  Boolean display = false;
  //Boolean shield = false;
  float Spawn;
  int x, y;
  //Constructor
  Powerups(int x, int y) {
    this.x = x;
    this.y = y;
    float Spawn = 80;
    if (Spawn > 50) {
      invi = true;
    } else if (invi = false) {
    }
  }
  void display() {
    if (display) {
      if (invi = true) {
        print("test");
        rect (x-100, y-100, 300, 300);
      } else if (invi = false) {
        println("FALSE!");
      }
    }
  }
}