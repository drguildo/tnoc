class NervousFly extends Mover {
  NervousFly() {
    col = #00AA00;
  }

  void update() {
    acceleration = PVector.random2D();
    super.update();
  }
}