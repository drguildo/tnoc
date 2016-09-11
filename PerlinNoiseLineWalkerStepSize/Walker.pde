class Walker {
  float x, y;
  float tx, ty;

  Walker() {
    x = width / 2;
    y = height / 2;
    
    tx = 0.0;
    tx = 10000.0;
  }

  void display() {
    stroke(0);
    point(x, y);
  }

  void step() {
    float stepx = map(noise(tx), 0.0, 1.0, -2.0, 2.0);
    float stepy = map(noise(ty), 0.0, 1.0, -2.0, 2.0);
    
    if ((x + stepx) < 0 || (x + stepx) > width) {
      stepx = -stepx;
    }
    
    if ((y + stepy) < 0 || (y + stepy) > height) {
      stepy = -stepy;
    }

    x += stepx;
    y += stepy;

    tx += 0.01;
    ty += 0.01;
  }
}