class Car {
  PVector location;
  PVector velocity;
  PVector acceleration;
  float topspeed;

  PImage img;

  Car() {
    img = loadImage("car.png");
    acceleration = new PVector(0.0, 0.0);
    velocity = new PVector(0.0, 0.0);
    location = new PVector(0.0, height / 2.0);
    topspeed = 20.0;
  }

  void accelerate() {
    acceleration.add(0.01, 0.0);
  }

  void decelerate() {
    acceleration = new PVector(-0.1, 0.0);
  }
  void update() {
    velocity.add(acceleration);
    velocity.limit(topspeed);
    if (velocity.x < 0.0) {
      velocity = new PVector(0.0, 0.0);
    }
    location.add(velocity);
  }

  void display() {
    imageMode(CENTER);
    image(img, location.x, location.y);
  }

  void checkEdges() {
    if (location.x > width) {
      location.x = 0;
    } else if (location.x < 0) {
      location.x = width;
    }
  }
}