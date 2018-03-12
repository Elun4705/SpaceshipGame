//START WITH SpaceSpaceship ON GROUND, WHEN GAME STARTS SpaceSpaceship QUICKLY ACCELERATES INTO SPACE
//MEASURE DISTANCE IN LIGHT YEARS
//Make missile be a charge using mouseReleased instead of mousClicked
//Add fuel coming out of rocket
Spaceship Purpleship;
Powerups[] shield;
Laser test;
Powerups invincibility;
//Powerups shield;
ArrayList<Alien> Alien = new ArrayList<Alien>();
ArrayList<Laser> lasers = new ArrayList<Laser>();
int totalalien = 0;
int lives = 3;

int distance = 1;
int alienCount = 0;
int laser = 1;
int rocket = 1;
int damage = 100;
int speed = 100;
//scale(size) is already here
boolean rockets = false;
boolean shields = false;
//boolean invincibility = false;

void setup() {
  size(1200, 1200);
  invincibility = new Powerups(200, 200);
  for (int i = 1; i > 50; i++) {
  shield[i] = new Powerups(200, 200);
  }
  //shield = new Powerups(500, 500);
  test = new Laser(1000, 1000, -10);
  photo  = loadImage("Lazer1.png");
  photo2 = loadImage("Purpleship.png");
  //photo3 = loadImage("Redship.png");
  //photo4 = loadImage("Blueship.png");
  //photo5 = loadImage("Blackalien.png");
}

void draw() {
  background(255);
  //DISPLAY
  test.travel();
  test.display();
  //Purpleship.display();
  invincibility.display();
  //shield.display();
  //image(photo, 200, 200);

  for (int i = 1; i > 50; i++) {
    shield[i].display();
  }

  //image(photo3, 200, 200, 170, 170);
  //image(photo4, 200, 200, 170, 170);
  //image(photo5, 200, 200, 170, 170);
  //
  //UI
  //line(0, 55, 150, 55);
  //line(150, 55, 150, 0);
  fill(0);
  text("Distance to space", 20, 30);
  fill(255, 0, 0);
  textSize(20);
  text("♥", 20, 60);
  //"LIVES" WILL BE REPLACED WITH NUMBER"
  text("lives", 40, 60);
  //"LIVES" WILL BE REPLACED WITH NUMBER"
}
void mouseClicked() {
  //lasers.add(new Laser(photo2.x, photo2.y));
  //laser++;
}