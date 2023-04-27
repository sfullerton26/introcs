int [] arrayY = {30, 50, 45, 10, 20};
void setup(){
  background(100);
  size(1000,1000);
}
void draw() {
  for( int x = 0; x <= 4; x = x + 1){
    raindrop(100, arrayY[x], 100);
    arrayY[x] = arrayY[x] + 1;
}
}
 void raindrop(float centerX, float centerY, float size) {
  fill(23,111,227);
  triangle(centerX, centerY - size, centerX + size / 2, centerY, centerX - size /2, centerY);
  noStroke();
  arc(centerX, centerY, size, size, 
  radians(0), radians(180));
}
