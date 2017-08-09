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

abstract class UnseparableSingleVariableFunction {
  abstract float f_x_y_equalto0(float x,float y);
  void plot() {
    for (float i = Bounds.minX ; i <= Bounds.maxX; i += precision) {
      for (float j = Bounds.minY; j <= Bounds.minY; j += precision) {
        if (this.f_x_y_equalto0(i,j) >= -0.5 && this.f_x_y_equalto0(i,j) <= 0.5) {
          point(cart2screen_X(i),cart2screen_Y(j));
        }
      }
    }
  }
}

UnseparableSingleVariableFunction coolFunction = new UnseparableSingleVariableFunction() {
  float f_x_y_equalto0(float x,float y) {
    return x - y;
  }
};