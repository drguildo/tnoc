class Attractor {
  final float G = 0.4;

  PVector location;
  float mass;

  Attractor() {
    location = new PVector(width / 2, height / 2);
    mass = 20;
  }

  PVector attract(Mover other) {
    PVector force = PVector.sub(location, other.location);
    float distance = constrain(force.mag(), 5, 25);
    float m = (G * mass * other.mass) / (distance * distance);
    force.normalize();
    force.mult(m);
    return force;
  }

  void display() {
    stroke(0);
    fill(255, 255, 0, 200);
    ellipse(location.x, location.y, mass * 2, mass * 2);
  }
}