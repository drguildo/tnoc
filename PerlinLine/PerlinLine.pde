int x;

void setup() {
  size(800, 200);
  background(255);

  x = 0;
}

void draw() {
  stroke(random(0, 255), random(0, 255), random(0, 255));
  line(x % width, noise(x * 0.01) * height, x % width, height);
  x++;
}