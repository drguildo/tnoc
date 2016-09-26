PVector wind, gravity;

Balloon b;

float xoff, yoff;

void setup() {
  size(1280, 720);

  wind = new PVector(0.01, 0);
  gravity = new PVector(0, 0.01);

  b = new Balloon(width / 2, height / 2);

  xoff = 0;
  yoff = 1;
}

void draw() {
  background(255);

  wind = new PVector(map(noise(xoff), 0, 1, -0.1, 0.1), map(noise(yoff), 0, 1, -0.1, 0.1));
  b.applyForce(wind);
  b.applyForce(gravity);

  b.checkEdges();
  b.update();
  b.draw();

  xoff += 0.01;
  yoff += 0.01;
}