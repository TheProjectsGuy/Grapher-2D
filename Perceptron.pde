void setup() {
  fullScreen();
  dataPoint = new Point();
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
  stroke(0,0,255);
  f2.plot();

  stroke(0, 255, 0);
  func.plot();
}

void keyPressed() { 
  dataPoint = new Point();
}