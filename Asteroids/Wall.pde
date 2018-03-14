class Wall {
   float[] wallPosition;
   int baseHeight;
   int variation = 5;
   
  Wall(int startHeight, int variation) {
    this.baseHeight = startHeight;
    this.variation = variation;
  }
  
  void makeFullWall() {
    for (int i = 0; i < 100; i++) {
      wallPosition[i] = random(1) * variation + baseHeight;
    }
  }
  
  void scroll() {
  }
  
  void display() {
    
  }
}