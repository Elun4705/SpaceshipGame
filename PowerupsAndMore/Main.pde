ArrayList<Laser> lasers;
float beamSpawn;
boolean beamActive, hasRun;
boolean displaytime = false;
int luck, sec, counter, x, y;
float randX, direction;
float randY;
Score score;
Ship a1;
Lives lives;
Timer movetimer;
Timer powertimer; //Timer for the testing
Timer powertimer2; //Cooldown
Timer laserTimer;
Timer displaytimer;
Powerups powerup;
Hero hero;
Wall tw;
Wall bw;
Star[] stars;
boolean play = true;

void setup() {
  lasers = new ArrayList<Laser>();
  hero = new Hero(50);
  score = new Score();
  lives = new Lives(3);
  powerup = new Powerups(870, 250);
  powertimer = new Timer(1000);
  powertimer2 = new Timer(1000);
  movetimer = new Timer(1000);
  laserTimer = new Timer(1000);
  displaytimer = new Timer(10000);
  stars = new Star[150];
  a1 = new Ship(900, 250, 70, 70);
  tw = new Wall(width/2, 0, width, 200);
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
  noCursor();
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
  hero.display();

  //Stars
  for (int i = 0; i < stars.length; i++) {
    stars[i].move();
    stars[i].display();
  }

  //Lasers
  if (laserTimer.isFinished()) {
    lasers.add(new Laser(a1.x, a1.y));
    lasers.add(new Laser(a1.x, a1.y+43));
    laserTimer.start();
  }

  for (int i = lasers.size()-1; i>=0; i--) {
    Laser laser = (Laser) lasers.get(i);
    //laser.fire();
    laser.display();
    if (laser.reachedLeft()) {
      lasers.remove(laser);
    }
  }

  for (int j = lasers.size()-1; j>=0; j--) {
    Laser l = (Laser) lasers.get(j);
    if (dist(l.x, l.y, hero.x, hero.y) < hero.size/2) {
      hero.health-=1;
      lasers.remove(l);
      println(hero.health);
    }
  }

  //println(lasers.size());

  if (hero.health == 0) {
    death();
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
    displaytime();
  } 
  if (powertimer.isFinished() && powertimer2.isFinished()) {  
    background(255);
    powertimer2.start();
    hasRun = false;
    displaytimer.start();
  }
  //if (frameCount % 1000 == 10) {
  //  println(200);
  //}
  if (displaytime) {
    if (!displaytimer.isFinished()) {
      powerup.display();
      println("timer");
      textSize(60);
      text("test", 100, 100);
      if (mouseX > 800 && mouseX < 950 && mouseY > 24 && mouseY < 265) {
        hero.health++;
        displaytime = false;
        println("collide");
      }
    }
  }
  //lives.display();
  a1.display();
  a1.movement();
  //println("top " + a1.topPosition());
  if (a1.topPosition() < tw.getBottomBoundary() ) {
    //println("horray top " + tw.getBottomBoundary() + " a1 " + a1.topPosition());
    a1.setrandom();
  } else if ( a1.bottomPosition() > bw.getTopBoundary() ) {
    //println("horray bottom " + bw.getTopBoundary() + " a1 " + a1.bottomPosition());
    a1.setrandom();
  }

  //println(hero.health);

  //println("alien" + a1.y);
  //println(tw.s + 100);
  //text("test", 100, 100);
  if (movetimer.isFinished()) {
    direction = random(0, 11);
    if (direction < 5) {
      a1.setrandom(); 
      movetimer.start();
    } else {
      a1.setrandom();

      movetimer.start();
    }
  }
}
void displaytime() {
  displaytimer.start();
  displaytime = true;
  if (displaytimer.isFinished()) {
    displaytime = false;
  }
}
void death() {
  background(0);
  textAlign(CENTER);
  fill(222);
  text("Game Over!", width/2, height/2);
  noLoop();
  play = false;
}