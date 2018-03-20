float beamSpawn;
boolean beamActive;
int luck, s;
float randX;
float randY;
Score score;
Ship a1;
Timer movetimer;
Powerups powerup;
void setup() {
  score = new Score();
  powerup = new Powerups();
  movetimer = new Timer(3000);
  a1 = new Ship(900,250,70,70);
  size(1000, 600);
  background(255);
  beamActive = false;  
  luck = 1;
  //int s = second();
}
void draw() {

  background(255);
  powerup.display(); 
  a1.display();
  a1.movement();
  //text("test", 15, 20);
  if (movetimer.isFinished()) {
    a1.setrandom(); 
    movetimer.start();
    println("Success!");
  }
}
