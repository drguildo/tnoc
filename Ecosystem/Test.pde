class Test extends Mover {
  int period;

  Test() {
    period = 0;
    col = #00AA00;
  }

  void update() {
    super.update();

    float n = sin(period);
    println(velocity);

    acceleration = new PVector(0, n);

    period += 1;
    
    if (period >= 360) {
      period = 0;
    }
  }
}