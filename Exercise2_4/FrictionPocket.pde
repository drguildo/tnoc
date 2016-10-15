class FrictionPocket {
  // The location of the top left and bottom right cornders.
  float x1, y1, x2, y2;
  // The friction coefficient.
  float c;

  FrictionPocket(float x1, float y1, float x2, float y2, float c) {
    this.x1 = x1;
    this.y1 = y1;
    this.x2 = x2;
    this.y2 = y2;
    this.c = c;
  }

  // Very basic check to see if the coordinates of a mover have
  // intersected the friction pocket.
  boolean contains(Mover m) {
    if (m.location.x >= x1 &&
      m.location.y >= y1 &&
      m.location.x < x2 &&
      m.location.y < y2) {
      return true;
    }

    return false;
  }

  PVector getForce(Mover m) {
    PVector force = m.velocity.copy();
    force.mult(-1);
    force.normalize();
    force.mult(c);
    return force;
  }

  // Display a bounding box representing the friction pocket. Positive
  // friction will be displayed as red and negative friction as green.
  void display() {
    float colorIntensity = map(c, -0.05, 0.05, 0, 255);
    stroke(128);
    strokeWeight(1);
    if (c > 0) {
      fill(colorIntensity, 0, 0, 128);
    } else {
      fill(0, colorIntensity, 0, 128);
    }
    rect(x1, y1, x2 - x1, y2 - y1);
  }
}