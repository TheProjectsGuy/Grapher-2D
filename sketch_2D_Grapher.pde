void setup() {
  fullScreen();
  dataPoint = new Point();  // To keep track to tracer
}


void draw() {
  background(255);

  //lines on the cartesian plane
  stroke(127, 127, 127);
  strokeWeight(0.25);
  for (float i = Bounds.minX; i <= Bounds.maxX; i += 1) {
    line(cart2screen_X(i), 0, cart2screen_X(i), height);
  }  //Makes vertical lines
  for (float i = Bounds.minY; i <= Bounds.maxY; i += 1) {
    line(0, cart2screen_Y(i), width, cart2screen_Y(i));
  }  //Makes horizontal lines
  //Cartesian Place (Coordinate axis)
  stroke(0);
  strokeWeight(1.5);
  line(cart2screen_X(Bounds.minX), cart2screen_Y(0), cart2screen_X(Bounds.maxX), cart2screen_Y(0));
  line(cart2screen_X(0), cart2screen_Y(Bounds.minY), cart2screen_X(0), cart2screen_Y(Bounds.maxY));

  //plot point
  dataPoint.plot();

  //make line
  drawFunctions();
}

void drawFunctions() {

  stroke(255, 0, 0);
  strokeWeight(1);
  f1.plot();

  stroke(0, 255, 0);
  func.plot();

  stroke(0, 0, 0);
  coolFunction.plot();
}

Point zoomPoint1, zoomPoint2;

void mousePressed() {
  if (mouseButton == RIGHT)
    dataPoint = new Point(screen2cart_X(mouseX), screen2cart_Y(mouseY));
  else if (mouseButton == LEFT) {
    zoomPoint1 = new Point(screen2cart_X(mouseX), screen2cart_Y(mouseY));
  }
}

void keyPressed() {
  Bounds.maxX = 20;
  Bounds.maxY = 20;
  Bounds.minX = -20;
  Bounds.minY = -20;
  precision = 0.001;
}

void mouseReleased() {
  if (mouseButton == LEFT) {
    zoomPoint2 = new Point(screen2cart_X(mouseX), screen2cart_Y(mouseY));
    Bounds.minX = zoomPoint1.x;
    Bounds.minY = zoomPoint1.y;
    Bounds.maxX = zoomPoint2.x;
    Bounds.maxY = zoomPoint2.y;
    precision /= 2;
  }
}