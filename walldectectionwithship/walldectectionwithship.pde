Enemyship Enemyship;
Wall tw;
Wall bw;
int yt;
int sec;

void setup () {
  
  size (1000,500);
  background (255);
  frameRate(30);
  Enemyship = new Enemyship(900,250,70,70);
  tw = new Wall(width/2,-10,width,200);
  bw = new Wall(width/2,500,width,200);
}

void draw () {
  background(255);
  Enemyship.display();
  tw.display();
  sec++;
  tw.s = sec;
  if (sec > 50) {
    sec = 50;
  }
  bw.display();
  bw.s = sec;
  
  
  //for (int i = wall; i>= 0; i--) {
    
  //}
}