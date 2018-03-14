PImage img;
int y = 250;
float r;

void setup () {
  size (1000,600);
  background (255);
  frameRate(120);
  img = loadImage("PurpleSpaceship.png");
  
}

void draw () {
  r = random(1,11);
  background(255);
  image(img,900,y,70,70);
  if (r < 5) {
    y--;
  } else {
    y++;
  }
}