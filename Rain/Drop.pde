class Drop {
  float z = random(0,20);
  float yspeed = map(z, 0, 20, 8, 20);
  float l = map(z, 0, 20, 10, 60);
  float x = random(-400, width+400);
  float y = random(-400,-l);
   
  void fall() {
    y = y + yspeed;
    x = x + a;
    yspeed += height/1000;
    
    if (y > height) {
      z = random(0,20);
      yspeed = map(z, 0, 20, 8, 20);
      l = map(z, 0, 20, 10, 60);
      x = random(-400, width+400);
      y = random(-400,-l);
    }
  }
  
  void show() {
    float t = map(z, 0, 20, 1, 3);
    strokeWeight(t);
    stroke(225, 221, 193);
    line(x,y,x+a,y+l);
  }
}
