float beamSpawn;
boolean beamActive;
int luck;
float randX;
float randY;
Ship a1;
Timer movetimer;
Powerups powerup;

void setup() {
  
  powerup = new Powerups();
  a1 = new Ship();
  size(1000, 600);
  background(255);
  //timer = new Timer(5000);    // Create a timer that goes off every 300 milliseconds
  beamActive = false;  luck = 1;
}
void draw() {
  movetimer = new Timer(3000);
  background(255);
  powerup.display();
  a1.display();
  //if (timer.isfinished()) {
  //   r = random(1,11); 
  //}
}