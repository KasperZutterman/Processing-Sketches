class Box {
  PVector pos;
  float r;
  color c;
  
  Box(float x, float y, float z, float r) {
    pos = new PVector(x,y,z);
    this.r = r;
    c = color( 255, 255, random(255) );
  }
  
  void show() {
    pushMatrix();
    fill(c);
    translate(pos.x, pos.y, pos.z);
    //fill(255, 0, 255);
    noStroke();
    box(r);
    popMatrix();
  }
  
  ArrayList<Box> split() {
    ArrayList<Box>boxes = new ArrayList<Box>();
    for (int x = -1; x < 2; x++) {
      for (int y = -1; y < 2; y++) {
        for (int z = -1; z < 2; z++) {
          
          int sum = abs(x) + abs(y) + abs(z);
          float newR = r/3;
          
          if (sum > 1) {
            float newX = pos.x + x*newR;
            float newY = pos.y + y*newR;
            float newZ = pos.z + z*newR;
            
            Box b = new Box(newX,newY,newZ,newR);
            boxes.add(b);
          }
        }
      }
    }
    return boxes;
  }
  
}
