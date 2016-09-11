void setup() {
  size(800, 360);
}

void draw() {
  loadPixels();
  float xoff = 0.0;
  for (int x = 0; x < width; x++) {
    float yoff = 0.0;
    for (int y = 0; y < height; y++) {
      float r = map(noise(xoff, yoff), 0, 1, 0, 255);
      float g = map(noise(1000 + xoff, 1000 + yoff), 0, 1, 0, 255);
      float b = map(noise(2000 + xoff, 2000 + yoff), 0, 1, 0, 255);
      pixels[x+y*width] = color(r, g, b);
      yoff += 0.01;
    }
    xoff += 0.01;
  }  
  updatePixels();
}