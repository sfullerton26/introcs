void setup() {
  size(1200,600);
  background(166,244,247);
 for( float row = 300; row <= 600; row = row + 100) { 
  for (int b = 0; b < 1300; b = b + 80) {
   //building(b + 100, row, 250, random (1, 5), random (2,4));
   building(b + 50, row, random(100,300), random(1,7), random(1,7));
  //building(b + 200, 600, 250, random(2, 8), random(1,8));
  }
  }
}
