abstract class LinearFunction {
  abstract float f(float x);
  void plot() {
    line(cart2screen_X(Bounds.minX), cart2screen_Y(f(Bounds.minX)), cart2screen_X(Bounds.maxX), cart2screen_Y(f(Bounds.maxX)));
  }
}


LinearFunction f1 = new LinearFunction() {
    float f(float x) {
    return 3*x + 2;
  }
};

LinearFunction f2 = new LinearFunction() {
    float f(float x) {
    return x;
  }
};

float precision = 0.008;

abstract class SingleVariableFunction {
  abstract float f(float x);
  void plot() {
    
    for (float i = Bounds.minX; i <= Bounds.maxY; i+= precision) {
      line(cart2screen_X(i), cart2screen_Y(f(i)), cart2screen_X(i + precision), cart2screen_Y(f(i + precision)));
    }
  }
}

SingleVariableFunction func = new SingleVariableFunction() {
    float f(float x) {
    return tan(x);
  }
};