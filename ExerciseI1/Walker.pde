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
    float stepx = random(-1, 2);
    float stepy = random(-1, 2);
    if (stepx > 1)
      stepx = 1;
    if (stepy > 1)
      stepy = 1;
    x += stepx;
    y += stepy;
  }
}