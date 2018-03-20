float beamSpawn;
boolean beamActive, hasRun;
int luck, s;
float randX;
float randY;
Score score;
Ship a1;
Lives lives;
Timer movetimer;
Timer powertimer; //Timer for the testing
Timer powertimer2; //Cooldown
Powerups powerup;
void setup() {
  score = new Score();
  lives = new Lives(3);
  powerup = new Powerups();
  powertimer = new Timer(5000);
  powertimer2 = new Timer(5000);
  movetimer = new Timer(3000);
  a1 = new Ship(900,250,70,70);
  size(1000, 500);
  background(255);
  beamActive = false;  
  luck = 1;
  hasRun = false;
  //int s = second();
}
void draw() {

  background(255);
  score.display();
  if (powertimer2.isFinished() && !hasRun) {
    powertimer.start();
    hasRun = true;
    println("finish1");
    powerup.display(); 
  }
    
    if (powertimer.isFinished() && powertimer2.isFinished()) {  
      
      println("Timer");
      //powertimer.stop();
      background(255);
      powertimer2.start();
      hasRun = false;
    } else {
      
    }
    
  
  
  
  
  lives.display();
  a1.display();
  a1.movement();
  //text("test", 100, 100);
  if (movetimer.isFinished()) {
    a1.setrandom(); 
    movetimer.start();
  }
}