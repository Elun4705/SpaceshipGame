enemyship EnemyShip;
wall wall;

void setup () {
  size (1000,500);
  background (255);
  frameRate(120);
  EnemyShip = new enemyship();
  wall = new wall();
}

void draw () {
  background(255);
  EnemyShip.display();
  wall.display();
  
  for (int i = wall; i>= 0; i--) {
    
  }
}