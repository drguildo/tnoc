class MyPVector extends PVector {
  void mylimit(float max) {
    if (mag() > max) {
      normalize();
      mult(max);
    }
  }
}