class Point {
  float x, y;
  float x_screen, y_screen;

  Point() {
    x_screen = random(width);
    y_screen = random(height);
    x = map(x_screen, 0, width, Bounds.minX, Bounds.maxX);
    y = map(y_screen, 0, height, Bounds.maxY, Bounds.minY);
  }

  Point(float x, float y) {
    this.x = x;
    this.y = y;
    x_screen = cart2screen_X(x);
    y_screen = cart2screen_Y(y);
  }

  void plot() {
    stroke(255, 0, 0);
    strokeWeight(2);
    ellipse(x_screen, y_screen, 3, 3);

    fill(0);
    textSize(10);
    textAlign(LEFT, CENTER);
    text("(" + str(x) + " , " + str(y) + ")", x_screen + 6, y_screen);
  }
}


Point dataPoint;