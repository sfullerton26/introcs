void building(float xCenter, float yBottom, float w, float numFloors, float numWindows) {
  rectMode(CENTER);
  float buildingHeight = 100 * numFloors;
  float yCenter = yBottom - buildingHeight /2;
  fill(random(1,244),random(1,244),random(1,244));
  rect(xCenter, yCenter, w, buildingHeight);
  //door
 fill(146, 150, 147);
 rect(xCenter - 10, yBottom - 25, w/8, 50);
 rect(xCenter + 20, yBottom - 25, w/8, 50);
 
 
 // windows
 float xLeft = xCenter - w/2;
 float spacing = w/(numWindows + 1);
 int x = 1;
 //int f = 1;
  //while (f <= buildingHeight) {
 // rect(xLeft + f * spacing, yCenter * f, spacing / 2, spacing);
  //rect(xLeft + x * spacing, yCenter * f, spacing / 2, spacing);
 // f = f + 1;
 //}
  
 while(x <= numWindows) {
   rect(xLeft + x * spacing, yCenter, spacing / 2, spacing);
   x = x + 1;
 }


}
