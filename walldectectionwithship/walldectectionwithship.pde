enemyship EnemyShip;
Wall tw;
Wall bw;
int yt;
int sec;

void setup () {
  
  size (1000,500);
  background (255);
  frameRate(30);
  EnemyShip = new enemyship();
  tw = new Wall(width/2,-10,width,200);
  bw = new Wall(width/2,500,width,200);
}

void draw () {
  background(255);
  EnemyShip.display();
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