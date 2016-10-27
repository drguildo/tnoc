float circleSize = 12;
float lineLength = 150;

float rotationAngle;

void setup() {
  size(640, 320);

  rotationAngle = 0;
}

void draw() {
  background(#FFFFFF);

  translate(width / 2, height / 2);
  rotate(rotationAngle);
  strokeWeight(2);
  fill(#666666);
  line(-lineLength/2, 0, lineLength/2, 0);
  ellipse(-lineLength/2, 0, circleSize, circleSize);
  ellipse(lineLength/2, 0, circleSize, circleSize);
  
  rotationAngle += 0.02;
  
  if (rotationAngle >= PI) {
    rotationAngle = 0;
  }
}