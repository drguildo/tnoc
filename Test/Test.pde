float frictionCoefficient = 0.05;
float gravityAmount = 0.1;

ArrayList<Mover> movers;

void setup() {
  size(640, 280);

  movers = new ArrayList<Mover>();
}

void draw() {
  background(#FFFFFF);

  for (Mover m : movers) {
    m.applyFriction(frictionCoefficient);
    m.applyGravity(gravityAmount);
    
    m.update();
    m.display();
  }
}

void mousePressed() {
  movers.add(new Mover(mouseX, mouseY, random(1, 4)));
}