class Walker {
  float x;
  float y;

  Walker() {
    x = width / 2;
    y = height / 2;
  }

  void display() {
    stroke(0);
    point(x, y);
  }

  void step() {
    float stepx = stepSize();
    float stepy = stepSize();
    x += stepx;
    y += stepy;
  }

  float stepSize() {
    while (true) {
      float step = random(0, 10);
      float p = random(0, 10);
      
      if (p < step)
        return random(-step, step);
    }
  }
}