class Mover {
  PVector acceleration;
  PVector location;
  PVector velocity;
  float topspeed;
  float t, n;

  Mover() {
    velocity = new PVector(0, 0);
    location = new PVector(width / 2, height / 2);
    topspeed = 10;
    t = 0;
  }

  void update() {
    PVector mouse = new PVector(mouseX, mouseY);
    PVector dir = PVector.sub(mouse, location);
    float strength = 1 / dir.mag();

    dir.normalize();

    dir.mult(strength);

    acceleration = dir;

    velocity.add(acceleration);
    velocity.limit(topspeed);
    location.add(velocity);
  }

  void display() {
    stroke(0);
    fill(175);
    ellipse(location.x, location.y, 32, 32);
  }

  void checkEdges() {
    if (location.x > width) {
      location.x = 0;
    } else if (location.x < 0) {
      location.x = width;
    }

    if (location.y > height) {
      location.y = 0;
    } else if (location.y < 0) {
      location.y = height;
    }
  }
}