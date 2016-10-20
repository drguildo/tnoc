class Mover {
  PVector location, velocity, acceleration;
  float len, mass;

  Mover(float x, float y, float len, float mass) {
    this.location = new PVector(x, y);
    this.velocity = new PVector(0, 0);
    this.acceleration = new PVector(0, 0);
    this.len = len;
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

  void applyDrag(Liquid l) {
    float speed = velocity.mag();
    float dragMagnitude = (len * 0.02) * l.coefficient * (speed * speed);

    PVector drag = velocity.copy();
    drag.mult(-1);
    drag.normalize();
    drag.mult(dragMagnitude);

    applyForce(drag);
  }

  void update() {
    velocity.add(acceleration);
    location.add(velocity);
    acceleration.mult(0);

    checkEdges();
  }

  void display() {
    stroke(0);
    strokeWeight(2);
    fill(127, 200);
    rect(location.x, location.y, len, len);
  }

  void checkEdges() {
    if (location.x + len > width) {
      location.x = width - len;
      velocity.x *= -1;
    } else if (location.x < 0) {
      location.x = 0;
      velocity.x *= -1;
    }
    
    if (location.y + len > height) {
      location.y = height - len;
      velocity.y *= -1;
    } else if (location.y < 0) {
      location.y = 0;
      velocity.y *= -1;
    }
  }
}