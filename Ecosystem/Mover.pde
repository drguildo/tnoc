class Mover {
  PVector acceleration;
  PVector location;
  PVector velocity;
  float topspeed;
  int col;

  Mover() {
    acceleration = new PVector(0, 0);
    velocity = new PVector(0, 0);
    location = new PVector(width / 2, height / 2);
    topspeed = 10;
    col = #CCCCCC;
  }

  void update() {
    velocity.add(acceleration);
    velocity.limit(10);
    location.add(velocity);
  }

  void display() {
    stroke(0);
    fill(col);
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