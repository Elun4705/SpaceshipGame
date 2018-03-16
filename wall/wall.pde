void setup () {
  size (1000,600);
  background (255);
  frameRate(120);
}

void draw () {
  background(255);
  int s = second();
  fill(0);
  strokeWeight(200);
  //just edit y axis for bottom rect so it looks good for game
  rect(0,-1000+s,width,1000);
  rect(0,600-s,width,1000);
  if(s>59){
    s=59;
  }
}