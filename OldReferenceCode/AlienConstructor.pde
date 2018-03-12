class Alien {
 //Member Variables
  color c;
  float xpos;
  float ypos;
  float xSpeed; 

  float scale = 1;
  Alien(color tempC, float tempXpos, float tempYpos, float tempXspeed) {
    c = tempC;
    xpos = tempXpos;
    ypos =tempYpos;
    xSpeed = tempXspeed;
  }  
  void display() {
    //image(photo,300,300);
      stroke(0);
    fill(c);
    rect(355+200/scale, 475+200/scale, 295/scale, 450/scale);
    rect(430+200/scale, 925+200/scale, 150/scale, 20/scale);
    //wing 1

    beginShape();
    vertex(356+200/scale, 600+200/scale);
    vertex(50+200/scale, 700+200/scale);
    vertex(50+200/scale, 850+200/scale);
    vertex(356+200/scale, 800+200/scale);
    endShape();
    //wing 2

    beginShape();
    vertex(650+200/scale, 600+200/scale);
    vertex(950+200/scale, 700+200/scale);
    vertex(950+200/scale, 850+200/scale);
    vertex(650+200/scale, 800+200/scale);
    endShape();

    //head
    triangle(420+200/scale, 475+200/scale, 590+200/scale, 475+200/scale, 500+200/scale, 150+200/scale);
    //window
    fill(#B40000);
    quad(420+200/scale, 630+200/scale, 500+200/scale, 375+200/scale, 590+200/scale, 630+200/scale, 500+200/scale, 700+200/scale);
    //rocket
    fill(#B40000);
    rect(430+200/scale, 925+200/scale, 150/scale, 20/scale);

 
    stroke(0);
    //fill(c);
    //rect(xpos, ypos, 295/scale, 450/scale);
    //rect(xpos, ypos, 150/scale, 20/scale);
    ////wing 1

    //beginShape();
    //vertex(xpos, ypos);
    //vertex(xpos, ypos);
    //vertex(xpos, ypos);
    //vertex(xpos, ypos);
    //endShape();
    ////wing 2

    //beginShape();
    //vertex(xpos, ypos);
    //vertex(xpos, ypos);
    //vertex(xpos, ypos);
    //vertex(xpos, ypos);
    //endShape();

    ////head
    //triangle(xpos, ypos, xpos, ypos, xpos, ypos);
    ////window
    //fill(#B40000);
    //quad(xpos, ypos, xpos, ypos, xpos, ypos, xpos, ypos);
    ////rocket
    //fill(#C0C0C0);
    //rect(xpos, ypos, 150/scale, 20/scale);
  }
}