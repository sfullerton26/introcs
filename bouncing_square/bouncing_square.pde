int bounceX = 0;
int bounceY = 0;
int dx = 5;
int dy = 5;


void setup() {
  size(1000, 1000);
}

void draw() {
  background(100);
  square (bounceX,bounceY,50);
  bounceX = bounceX + dx;
  //bounceY = bounceY + 1;
  if (bounceX == width - 50) {
    dx = -5;
  }
  if(bounceX == 0) {
    dx = 5;
 }
  bounceY = bounceY + dy;
  if (bounceY == height - 50) {
    dy = -1;
  }
  if (bounceY == 0) {
    dy = 1;
  }
  circle(960, 38, 75);
  println(bounceX);
}
