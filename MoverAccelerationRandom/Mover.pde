class Mover {
  PVector location;
  PVector velocity;
  PVector acceleration;
  float topspeed;

  Mover() {
    acceleration = new PVector(0.0, 0.0);
    velocity = new PVector(0, 0);
    location = new PVector(width / 2, height / 2);
    topspeed = 10;
  }

  void update() {
    acceleration = PVector.random2D();
    
    velocity.add(acceleration);
    velocity.limit(10);
    location.add(velocity);
  }

  void display() {
    stroke(0);
    fill(175);
    ellipse(location.x, location.y, 16, 16);
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