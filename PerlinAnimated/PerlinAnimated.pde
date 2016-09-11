float off = 0.0;

void setup() {
  size(800, 360);
}

void draw() {
  loadPixels();
  float xoff = 0.0;
  for (int x = 0; x < width; x++) {
    float yoff = 0.0;
    for (int y = 0; y < height; y++) {
      float bright = map(noise(off + xoff, yoff), 0, 1, 0, 255);
      pixels[x+y*width] = color(bright);
      yoff += 0.01;
    }
    xoff += 0.01;
  }  
  updatePixels();
  
  off += 0.01;
}