class Balloon {
  PVector acceleration;
  PVector velocity;
  PVector location;

  int h, w;

  Balloon(int x, int y) {
    acceleration = new PVector(0, 0);
    velocity = new PVector(0, 0);
    location = new PVector(x, y);

    h = 120;
    w = 100;
  }

  void applyForce(PVector force) {
    acceleration.add(force);
  }

  void update() {
    velocity.add(acceleration);
    location.add(velocity);
    acceleration.mult(0);
  }

  void checkEdges() {
    if (location.x > width) {
      location.x = width;
      velocity.x *= -1;
    } else if (location.x < 0) {
      velocity.x *= -1;
      location.x = 0;
    }

    if (location.y > height) {
      velocity.y *= -1;
      location.y = height;
    }
  }

  void draw() {
    stroke(#FF0000);
    fill(#BB0000);
    ellipseMode(CENTER);
    ellipse(location.x, location.y, 100, 120);
  }
}