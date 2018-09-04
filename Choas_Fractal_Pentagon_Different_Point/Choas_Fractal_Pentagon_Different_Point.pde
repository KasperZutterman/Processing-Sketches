int npoints = 5;
float lx; //last x
float ly; //last y
float[][] polygon;
int amount = 1;
int rand = 0;
int lrand= 1;

void setup() {
  background(0);
  size(800,800);
  noFill();
  stroke(255);
  strokeWeight(3);
  polygon = new float[npoints][2];
  polygon(400, 400, 300, npoints);
  delay(2000);
  randomPoint();
}

void draw() {
  for (int i = 0; i < amount; i++) {
    midway();
  }
  if (int(random(10)) == 1) {
    amount *= 2;
  }
}

void randomPoint() {
  lx = polygon[0][0];
  ly = polygon[0][1];
  
  point(lx ,ly); 
}

void midway() {
  while (rand == lrand) {
    rand = int(random(npoints));
  }
  lrand = rand;
  float tempx = polygon[rand][0];
  float tempy = polygon[rand][1];
  
  float newx = (lx+tempx)/2;
  float newy = (ly+tempy)/2;
  
  point(lx,ly);
  lx = newx;
  ly = newy;
}

void polygon(float x, float y, float radius, int npoints) {
  float angle = TWO_PI / npoints;
  int step = 0;
  beginShape();
  for (float a = 0; a < TWO_PI; a += angle) {
    float sx = x + sin(a+PI) * radius;
    float sy = y + cos(a+PI) * radius;
    vertex(sx, sy);
    polygon[step][0] = sx;
    polygon[step][1] = sy;
    step++;
  }
  endShape(CLOSE);
}
