float a = 0;

ArrayList<Box> sponge;

void setup() {
  size(800, 800, P3D);
  sponge = new ArrayList<Box>();
  
  Box b = new Box(0,0,0,400);
  sponge.add(b);
}

void mousePressed() {
  ArrayList<Box> next = new ArrayList<Box>();
  for (Box b: sponge) {
    ArrayList<Box> newBoxes = b.split();
    next.addAll(newBoxes);
  }
  sponge = next;
}

void draw() {
  background(127);
  stroke(255);
  noFill();
  lights();
  
  translate(width/2, height/2);
  
  rotateX(a);
  rotateY(a*0.5);
  rotateZ(a*0.25);
  
  for (Box b: sponge) {
    b.show();
  }
  
  a+= 0.005;
}
