class Walker {
  float x, y;
  float oldx, oldy;

  Walker() {
    reset();
  }

  void display() {
    stroke(random(255), random(255), random(255));
    line(oldx, oldy, x, y);
  }

  void step() {
    oldx = x;
    oldy = y;
    float stepx = stepSize();
    float stepy = stepSize();
    x += stepx;
    y += stepy;

    if (x < 0 || x > width) {
      reset();
    }

    if (y < 0 || y > height) {
      reset();
    }
  }

  float stepSize() {
    while (true) {
      float step = random(0, 10);
      float p = random(0, 10);

      if ((p * p) < (step * step))
        return random(-step, step);
    }
  }

  void reset() {
    oldx = x = width / 2;
    oldy = y = height / 2;
    background(255);
  }
}