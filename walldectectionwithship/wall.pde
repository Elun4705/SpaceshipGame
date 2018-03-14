class wall {
  

  void display() {
    int s = second();
    strokeWeight(200);
    rect(0, -1000+s, width, 1000);
    rect(0, 500-s, width, 1000);
    if (s > 1000) {
      s=1000;
    }
  }
}