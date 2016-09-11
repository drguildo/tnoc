float x, y, z;
float xspeed, yspeed, zspeed;

void setup() {
  size(600, 600, P3D);
  //frameRate(30);
  
  x = 0.0;
  y = 0.0;
  z = 0.0;
  
  xspeed = 1;
  yspeed = 1;
  zspeed = 1;
}

void draw() {
  background(0);
  lights();
  pushMatrix();
  translate(x, y, z);
  sphere(width * 0.1);
  popMatrix();
  
  x += xspeed;
  y += yspeed;
  z += zspeed;
  
  if (x < 0 || x > width) {
    xspeed = -xspeed;
  }
  if (y < 0 || y > height) {
    yspeed = -yspeed;
  }
  if (z < 0 || z > 200) {
    zspeed = -zspeed;
  }
}