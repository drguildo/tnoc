float noiseScale = 0.02;

void setup() {
  size(800, 600);
}

void draw() {
  for (int x = 0; x < width; x++) {
    for (int y = 0; y < height; y++) {
      stroke(noise(x * 0.01, y * 0.01) * 255);
      point(x, y);
    }
  }
}