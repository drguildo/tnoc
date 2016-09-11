class Walker {
  float oldx, oldy;
  float x, y;

  float tx, ty;

  Walker() {
    tx = 0;
    ty = 10000;

    x = map(noise(tx), 0, 1, 0, width);
    y = map(noise(ty), 0, 1, 0, height);
  }

  void step() {
    oldx = x;
    oldy = y;
    x = map(noise(tx), 0, 1, 0, width);
    y = map(noise(ty), 0, 1, 0, height);

    tx += 0.01;
    ty += 0.01;
  }

  void display() {
    stroke(0);
    line(oldx, oldy, x, y);
  }
}