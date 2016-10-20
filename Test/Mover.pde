class Mover {
  PVector location, velocity, acceleration;
  float mass;

  Mover(float x, float y, float mass) {
    this.location = new PVector(x, y);
    this.velocity = new PVector(0, 0);
    this.acceleration = new PVector(0, 0);
    this.mass = mass;
  }

  void applyForce(PVector force) {
    PVector f = PVector.div(force, mass);
    acceleration.add(f);
  }

  void applyFriction(float coefficient) {
    PVector friction = velocity.copy();
    friction.mult(-1);
    friction.normalize();
    friction.mult(coefficient);
    applyForce(friction);
  }

  void applyGravity(float amount) {
    PVector gravity = new PVector(0, amount * mass);
    applyForce(gravity);
  }

  void update() {
    velocity.add(acceleration);
    location.add(velocity);
    acceleration.mult(0);

    checkEdges();
  }

  void draw() {
    fill(127, 127);
    ellipse(location.x, location.y, mass * 16, mass * 16);
  }

  void checkEdges() {
    if (location.x > width) {
      location.x = width;
      velocity.x *= -1;
    } else if (location.x < 0) {
      location.x = 0;
      velocity.x *= -1;
    }

    if (location.y > height) {
      location.y = height;
      velocity.y *= -1;
    } else if (location.y < 0) {
      location.y = 0;
      velocity.y *= -1;
    }
  }
}