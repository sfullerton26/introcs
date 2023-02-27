void building(float xCenter, float yBottom, float w, float numFloors) {
  rectMode(CENTER);
  float yCenter = yBottom - 200;
  fill(194,110,190);
  rect(xCenter, yCenter, w, numFloors);
  //door
 fill(146, 150, 147);
 rect(xCenter - 10, yBottom, w /8, 100);
 rect(xCenter + 20, yBottom, w/8, 100);
  //windows
  // rect(
}
