void building(float xCenter, float yBottom, float w, float numFloors, float numWindows) {
  rectMode(CENTER);
  float buildingHeight = 100 * numFloors;
  float yCenter = yBottom - buildingHeight /2;
  fill(194,110,190);
  rect(xCenter, yCenter, w, buildingHeight);
  //door
 fill(146, 150, 147);
 rect(xCenter - 10, yBottom, w /8, 100);
 rect(xCenter + 20, yBottom, w/8, 100);
 
 // windows
 float xLeft = xCenter - w/2;
 float spacing = w/(numWindows + 1);
 int x = 1;
 int f = 1;
 //while (f <= buildingHeight) {
   
 while(x <= numWindows) {
   rect(xLeft + x * spacing, yCenter, spacing / 2, spacing);
   x = x + 1;
 }
}
