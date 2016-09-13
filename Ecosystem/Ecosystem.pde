// TODO:
// Swimming fish
// Hopping bunny
// Slithering snake

Test mover;

void setup() {
  size(1280, 720);
  mover = new Test();
}

void draw() {
  background(255);

  mover.update();
  mover.checkEdges();
  mover.display();
}