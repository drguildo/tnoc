Mover[] movers = new Mover[10];

void setup() {
  size(800, 320);

  for (int i = 0; i < movers.length; i++) {
    movers[i] = new Mover(random(0.1, 5), random(0, width), random(0, height));
  }
}

void draw() {
  background(255);

  for (Mover m : movers) {
    float edgeForceScale = 0.00008;

    PVector leftForce = new PVector(abs(width - m.location.x) * edgeForceScale, 0);
    PVector rightForce = new PVector(-(m.location.x * edgeForceScale), 0);
    PVector topForce = new PVector(0, abs(height - m.location.y) * edgeForceScale);
    PVector bottomForce = new PVector(0, -(m.location.y * edgeForceScale));

    m.applyForce(leftForce);
    m.applyForce(rightForce);
    m.applyForce(topForce);
    m.applyForce(bottomForce);

    m.update();
    m.display();
  }
}