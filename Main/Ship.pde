class Ship {
PImage img;
int y = 250;
float r;

void display() {
  img = loadImage("PurpleSpaceship.png");
  
  r = random(1,11);
  
  image(img,900,y,70,70);
  if (r < 5) {
    y--;
  } else {
    y++;
  }
}
}