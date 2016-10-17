float frictionCoefficient = 0.4;
float gravityAmount = 0.4;

ArrayList<Mover> movers;

void setup() {
  size(1280, 720);

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
  movers.add(new Mover(mouseX, mouseY, random(2, 8)));
}