float beamSpawn;
boolean beamActive;
int luck;
float randX;
float randY;
Timer timer;
void setup() {
  size(1200, 1200);
  background(255);
  timer = new Timer(5000);    // Create a timer that goes off every 300 milliseconds
  beamActive = false;
  luck = 1;
}
void draw() {
  beamSpawn = random(100);



  if (beamSpawn <= luck) {
    println("Success!");
    beamActive = true;
    randX = random(300, 900);
    randY = random(300, 900);
    timer.start();
  }
  if (beamActive == true) {
    //noStroke();
    fill(0);
    ellipse(randX, randY, 50, 50);
    //stroke(1);
    luck =- 1;
  }
  if (timer.isFinished()) {
    background(255);
    luck =+ 1;
  }
}