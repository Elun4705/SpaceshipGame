class Powerups {
  int luck;
  void display() {
    //timer = new Timer(5000);
    luck = 1;

    if (powertimer2.isFinished()) {
      beamSpawn = random(1);
      if (beamSpawn <= luck) {
        
        beamActive = true;
        randX = random(300, 900);
        randY = random(100, 400);
        powertimer.start();
      }
      if (beamActive == true) {
        //noStroke();
        println("Success!");
        fill(0);
        ellipse(randX, randY, 50, 50);
        //stroke(1);
        luck =- 1;
      }

      //background(255);
      //luck =+ 1;
    }
  }
}