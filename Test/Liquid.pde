class Liquid {
  // Location, width and height.
  float x, y, w, h;
  float coefficient;

  Liquid(float x, float y, float w, float h, float c) {
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
    this.coefficient = c;
  }

  boolean contains(Mover m) {
    PVector location = m.location;
    if (location.x > x && location.x < (x+w) &&
      location.y > y && location.y < (y+h)) {
      return true;
    }

    return false;
  }

  void display() {
    noStroke();
    fill(#97BEF5, 175);
    rect(x, y, w, h);
  }
}