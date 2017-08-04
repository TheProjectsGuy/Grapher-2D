//Boundary values of the catresian view
static class Bounds {
  static float minX = -20, maxX = 20, minY = -20, maxY = 20;

  static float midX = (minX + maxX)/2, midY = (minY + maxY)/2;
}


//Converting Coordinates
float screen2cart_X(float screenX) {
  return map(screenX, 0, width, Bounds.minX, Bounds.maxX);
}
float screen2cart_Y(float screenY) {
  return map(screenY, 0, height, Bounds.maxY, Bounds.minY);
}
float cart2screen_X(float cartX) {
  return map(cartX, Bounds.minX, Bounds.maxX, 0, width);
}
float cart2screen_Y(float cartY) {
  return map(cartY, Bounds.minY, Bounds.maxY, height, 0);
}