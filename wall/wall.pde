void setup () {
  size (1000,500);
  background (255);
  frameRate(120);
}

void draw () {
  background(255);
  int s = second();
  strokeWeight(200);
  line(0,s,1000,s);
  line(0,500-s,1000,500-s);
  if(s>1000){
    s=1000;
  }
}