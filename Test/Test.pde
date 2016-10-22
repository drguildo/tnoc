float frictionCoefficient = 0.05;
float gravityAmount = 0.1;
float dragCoefficient = 0.1;

Liquid liquid;

ArrayList<Mover> movers;

void setup() {
  size(640, 360);

  liquid = new Liquid(0, height / 1.5, width, height / 1.5, dragCoefficient);

  movers = new ArrayList<Mover>();
}

void draw() {
  background(#FFFFFF);

  for (Mover m : movers) {
    m.applyGravity(gravityAmount);
    //m.applyFriction(frictionCoefficient);
    if (liquid.contains(m)) {
      m.applyDrag(liquid);
    }

    m.update();
    m.display();
  }

  liquid.display();
}

void mousePressed() {
  if (mouseButton == LEFT) {
    movers.add(new Mover(mouseX, mouseY, random(0.5, 3)));
  }
}