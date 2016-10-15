/*
 Create pockets of friction in a Processing sketch so that objects
 only experience friction when crossing over those pockets. What if
 you vary the strength (friction coefficient) of each area? What if
 you make some pockets feature the opposite of friction—i.e., when
 you enter a given pocket you actually speed up instead of slowing
 down?
 */

Mover[] movers = new Mover[5];
FrictionPocket fp1 = new FrictionPocket(0, 0, 250, 100, -0.03);
FrictionPocket fp2 = new FrictionPocket(300, 50, 700, 250, 0.05);

void setup() {
  size(800, 300);

  for (int i = 0; i < movers.length; i++) {
    movers[i] = new Mover(random(1, 4), random(width), 0);
  }
}

void draw() {
  background(255);

  fp1.display();
  fp2.display();

  for (Mover m : movers) {
    PVector wind = new PVector(0.01, 0);
    PVector gravity = new PVector(0, 0.1*m.mass);

    if (fp1.contains(m)) {
      m.applyForce(fp1.getForce(m));
    }
    if (fp2.contains(m)) {
      m.applyForce(fp2.getForce(m));
    }

    m.applyForce(wind);
    m.applyForce(gravity);

    m.update();
    m.display();
    m.checkEdges();
  }
}

void mouseClicked() {
  println("clicked");
  movers = (Mover[])append(movers, new Mover(random(1, 4), mouseX, mouseY));
}