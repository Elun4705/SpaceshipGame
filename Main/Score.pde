class Score {

  void display() {
    //println(millis()/10);
    int s = millis()/10;
    fill(255);
    rect(450,450,50,50);
    fill(0);
    text(s, 939, 455);
    if (s > 800) {
    //background(0);
    }
  }
}