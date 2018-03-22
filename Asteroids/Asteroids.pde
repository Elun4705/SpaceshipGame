int x, y;
PImage test;
//ArrayList<Star> stars;
Star[] stars;


Ship s1;
//Wall w1;
Live live1;
Laser laser1;

void setup() {
  size(1000, 1000);
  background(0);
  frameRate(240);
  stars = new Star[100];
  //stars = new ArrayList<Star>();
  for (int i = 0; i < stars.length; i++) {
    stars[i] = new Star(int(random(height)),int(random(width)));
  }
  s1 = new Ship(40, 2);
  //w1 = new Wall(5,5);
  live1 = new Live(3);
  laser1 = new Laser(2);
  test = loadImage("test.png");

  x = 0;
  y = 0;
}

void draw() {
  background(0);
  //w1.display();
  laser1.display();
  for (int i = 0; i < stars.length; i++) {
    stars[i].move();
    stars[i].display();
  }
  s1.display();
  //Live Station
  stroke(0);
  fill(24,177,255);
  rect(-2,900,300,150);
    live1.display();
}