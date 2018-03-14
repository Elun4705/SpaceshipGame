int x, y;
PImage test;

Ship s1;
Wall w1;

void setup() {
  size(1000, 1000);
  background(255);
  frameRate(240);
  s1 = new Ship(40);
  w1 = new Wall(5,5);
  test = loadImage("test.png");

  x = 0;
  y = 0;
}

void draw() {
  background(255);
  s1.display();
  w1.display();
  
  
}

void ship() {
}

void wall() {
}

void laser() {
}

void powerup() {
}

void enemy() {
}

void live() {
}