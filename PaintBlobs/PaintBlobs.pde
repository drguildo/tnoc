void setup() {
  size(800, 600);
}

void draw() {
  float r = randomGaussian() * 255;
  float g = randomGaussian() * 255;
  float b = randomGaussian() * 255;
  
  float x = (width / 2) + (randomGaussian() * (width / 8));
  float y = (height / 2) + (randomGaussian() * (height / 8));
  
  noStroke();
  fill(r, g, b);
  ellipse(x, y, 10, 10);
}