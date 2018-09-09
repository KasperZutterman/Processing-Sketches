int n = 20;
int size = 35;
int offset = (900-20*35)/2;
Percolation percolation;

void setup() {
  size (900, 900);
  fill(0,0,255);
  rect((900-35)/2, 25, size, size);
  fill(255);
  rect((900-35)/2, 875-35, size, size);

  percolation = new Percolation(n);
}

void draw() {
  if (!percolation.percolates()) {
  
  for (int i = 0; i < n; i ++) {
    for (int j = 0; j < n; j ++) {
      
      if(percolation.isFull(j+1, i+1)) {
        fill(0,0,255);
      } 
      else if (percolation.isOpen(j+1, i+1)) {
        fill(255);
      }
      else  {
        fill(0);
      }
      
      rect(i*size + offset, j*size + offset, size, size);
    }
  }

  
  
    int column;
    int row;

    do {
      column = 1 + int(random(n));
      row = 1 + int(random(n));
    } while (percolation.isOpen(row, column));

    percolation.open(row, column);
    
  } 
  else {
    for (int i = 0; i < n; i ++) {
    for (int j = 0; j < n; j ++) {
      
      if(percolation.isFull(j+1, i+1)) {
        fill(0,0,255);
      } 
      else if (percolation.isOpen(j+1, i+1)) {
        fill(255);
      }
      else  {
        fill(0);
      }
      
      rect(i*size + offset, j*size + offset, size, size);
    }
  }
  fill(0,0,255);
  rect((900-35)/2, 875-35, size, size);
  noLoop();
  }
}
