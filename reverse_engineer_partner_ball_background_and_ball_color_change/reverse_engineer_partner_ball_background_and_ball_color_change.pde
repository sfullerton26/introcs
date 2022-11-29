int bounceX = 30; 
int bounceY = 540;
int dx = 5;
int dy = 5;
int r = 0;
int g = 0;
int b = 0;
int cr = 255;
int cg = 0;
int cb = 0;

void setup() {
  size(600, 600);
}

void draw() {
  background(r,g,b);
  circle(bounceX, bounceY, 80);
  fill (cr, cg, cb);
  bounceX = bounceX + dx;
  //bounceY= bounceY + 1;
  if (bounceX == width - 20) {
    dx = -5;
  }
  if(bounceX == 0) {
    dx = 5;
  }
  bounceY = bounceY + dy;
  if (bounceY == height - 20) {
    dy = -1;
  }
  if (bounceY == 40) {
    dy = 1;
  }
// pink 244, 176, 255
// blue 176, 219, 255
// green 99, 255, 123
  if (bounceY == 560 ) {
    r = 0;
    g = 0;
    b = 0;
    cr = 255;
    cg = 0;
    cb = 0;
  }
  if (bounceX == 560) {
   r = 99;
   g = 255;
   b = 123;
   cr = 176;
   cg = 219;
   cb = 255;
  }
  if (bounceY == 50) {
    r = 244;
    g = 176;
    b = 255;
    cr = 255;
    cg = 255;
    cb = 255;
  }
  if (bounceX == 25) {
    r = 176;
    g = 219;
    b = 255;
    cr = 99;
    cg = 255;
    cb = 123;
    
  }
  
  println(bounceX, bounceY);
}
