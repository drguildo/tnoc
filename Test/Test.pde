float frictionCoefficient = 0.05;
float gravityAmount = 0.1;
float dragCoefficient = 0.1;

Attractor a;
//Liquid liquid;
ArrayList<Mover> movers;

void setup() {
  size(640, 360);

  a = new Attractor();
  //liquid = new Liquid(0, height / 1.5, width, height / 1.5, dragCoefficient);
  movers = new ArrayList<Mover>();
}

void draw() {
  background(#FFFFFF);
  
  a.display();

  for (Mover m : movers) {
    //m.applyGravity(gravityAmount);
    //m.applyFriction(frictionCoefficient);
    //if (liquid.contains(m)) {
    //  m.applyDrag(liquid);
    //}

    PVector f = a.attract(m);
    m.applyForce(f);

    m.update();
    m.display();
  }

  //liquid.display();
}

void mousePressed() {
  if (mouseButton == LEFT) {
    movers.add(new Mover(mouseX, mouseY, random(0.5, 3)));
  }
}