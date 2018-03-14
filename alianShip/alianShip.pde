PImage img;
int y = 250;

void setup () {
  size (1000,500);
  background (255);
  frameRate(120);
  img = loadImage("PurpleSpaceship.png");
}

void draw () {
  background(255);
  image(img,900,250);
  
}