Drop[] drops = new Drop[800];
float a = 0;

void setup() {
  size(800, 500);
  for (int i=0; i < drops.length; i++) {
    drops[i] = new Drop();
  }
}

void draw() {
  background(4, 0, 23);
  for (int i=0; i < drops.length; i++) {
    drops[i].fall();
    drops[i].show();
  }
  a = map(mouseX, 0, width, -3, 3);
}
