float angle;

void setup() {
  size(800, 600);

  angle = 0;
}

void draw() {
  background(128);

  textSize(32);
  text(angle, 0, 32);

  pushMatrix();
  rectMode(CENTER);
  translate(width / 2, height / 2);
  rotate(angle);

  stroke(#FFFFFF);
  rect(0, 0, 100, 100);

  stroke(#FF0000);
  line(0, 0, 0, -50);
  popMatrix();

  angle += 0.01;

  if (angle >= PI * 2) {
    angle = 0;
  }
}