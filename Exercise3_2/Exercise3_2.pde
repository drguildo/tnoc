float frictionCoefficient = 0.05;
float gravityAmount = 0.1;
float dragCoefficient = 0.1;

ArrayList<Mover> movers;

PVector bottomLeft;

void setup() {
  size(640, 360);

  bottomLeft = new PVector(0, height);

  movers = new ArrayList<Mover>();
}

void draw() {
  background(#FFFFFF);

  if (mouseButton == LEFT) {
    line(bottomLeft.x, bottomLeft.y, mouseX, mouseY);
  }

  for (Mover m : movers) {
    m.applyGravity(gravityAmount);
    m.applyFriction(frictionCoefficient);

    m.update();
    m.display();
  }
}

void mouseReleased() {
  PVector force = new PVector(mouseX, mouseY);
  force.sub(bottomLeft);
  force.mult(0.1);

  Mover m = new Mover(0, height, 2);
  movers.add(m);
  m.applyForce(force);
}