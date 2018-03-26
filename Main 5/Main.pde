float beamSpawn;
boolean beamActive, hasRun;
int luck, sec, counter, x, y;
float randX, direction;
float randY;
Score score;
Ship a1;
Lives lives;
Timer movetimer;
Timer powertimer; //Timer for the testing
Timer powertimer2; //Cooldown
Powerups powerup;
Wall tw;
Wall bw;
Star[] stars;
boolean play = true;
void setup() {
  score = new Score();
  lives = new Lives(3);
  powerup = new Powerups();
  powertimer = new Timer(5000);
  powertimer2 = new Timer(5000);
  movetimer = new Timer(1000);
  stars = new Star[150];
  a1 = new Ship(900, 250, 70, 70);
  tw = new Wall(width/2, -10, width, 200);
  bw = new Wall(width/2, 500, width, 200);
  for (int i = 0; i < stars.length; i++) {
    stars[i] = new Star(int(random(height)), int(random(width)));
  }
  x = 0;
  y = 0;
  size(1000, 500);
  background(255);
  beamActive = false;  
  luck = 1;
  hasRun = true;
  //int s = second();
}
void draw() {
  background(0);
  if (!play) {
    startScreen();
  } else if (play) {
    gameplay();
  }
}
void startScreen() {
  background(255);
}
void gameplay() {
  for (int i = 0; i < stars.length; i++) {
    stars[i].move();
    stars[i].display();
  }
  counter++;
  tw.display();
  if (counter>10) {
    sec++;
    counter = 0;
  }
  tw.s = sec;

  bw.display();
  bw.s = sec;
  score.display();
  if (powertimer2.isFinished() && !hasRun) {
    powertimer.start();
    hasRun = true;
    println("finish1");
    powerup.display();
  } 
  if (powertimer.isFinished() && powertimer2.isFinished()) {  
    println("Timer");
    background(255);
    powertimer2.start();
    hasRun = false;
  }
  //lives.display();
  a1.display();
  a1.movement();
  println("alien" + a1.y);
  println(tw.s + 100);
  //text("test", 100, 100);
  if (movetimer.isFinished()) {
    direction = random(0, 11);
    if (direction < 0) {
      a1.setrandom(); 
      movetimer.start();
      println("up");
    } else {
      println("down");
      movetimer.start();
    }
    if (a1.y < tw.s + 100 /*|| a1.y > bw.s */) {
      println("horray");
      a1.setrandom();
    }
  }
}