class Walker {
  int x;
  int y;

  Walker() {
    x = width / 2;
    y = height / 2;
  }

  void display() {
    stroke(0);
    point(x, y);
  }

  void step() {
    int stepx = chooseDirection(x, mouseX);
    int stepy = chooseDirection(y, mouseY);
    x += stepx;
    y += stepy;
  }
  
  int chooseDirection(int pos, int mousePos) {
    float r = random(1);
    int result = int(random(-1, 1));
    
    if (r < 0.5) {
      if (mousePos > pos) {
        return 1;
      } else {
        return -1;
      }
    }
    
    return result;
  }
}