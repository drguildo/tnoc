float frictionCoefficient = 0.05;
float gravityAmount = 0.1;

ArrayList<Mover> movers;

void setup() {
  size(640, 280);

  movers = new ArrayList<Mover>();
}

void draw() {
  background(#FFFFFF);

  PVector friction, gravity;
  for (Mover m : movers) {
    friction = m.velocity.copy();
    friction.mult(-1);
    friction.normalize();
    friction.mult(frictionCoefficient);
    m.applyForce(friction);

    gravity = new PVector(0, gravityAmount * m.mass);
    m.applyForce(gravity);

    m.update();
    m.draw();
  }
}

void mousePressed() {
  movers.add(new Mover(mouseX, mouseY, random(1, 4)));
}