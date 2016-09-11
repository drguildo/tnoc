Car car;

void setup() {
  size(1000, 200);
  car = new Car();
}

void draw() {
  background(255);

  car.update();
  car.checkEdges();
  car.display();
}

void keyPressed() {
  if (keyCode == UP) {
    car.accelerate();
  } else if (keyCode == DOWN) {
    car.decelerate();
  }
}