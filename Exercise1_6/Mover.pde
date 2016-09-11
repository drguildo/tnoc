class Mover {
  PVector location;
  PVector velocity;
  PVector acceleration;
  float topspeed;
  float n, time;

  Mover() {
    acceleration = new PVector(0.0, 0.0);
    velocity = new PVector(0, 0);
    location = new PVector(width / 2, height / 2);
    topspeed = 10;
    time = 0.0;
  }

  void update() {
    acceleration = PVector.random2D();
    acceleration.mult(noise(time));

    velocity.add(acceleration);
    velocity.limit(10);
    location.add(velocity);

    time += 0.1;
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