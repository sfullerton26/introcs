void setup() {
  size(1200,600);
  background(166,244,247);
  for (int b = 0; b < 1300; b = b + 80) {
  building(b + 100, 600, 300, random(1,7), random(1,7));
  building(b + 600, 600, 250, random (1, 5), random (2,4));
  building(b + 200, 600, 200, random(2, 8), random(1,8));
  }
  //building(800, 600, 300, 5,7);
  //building(400,600, 300, 7, 2);
  //building(100, 600, 200, 4, 5);
 // building(100, 600, 250, 8, 2);
}
