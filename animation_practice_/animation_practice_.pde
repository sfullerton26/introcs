int r = 1;
int dr = 1;
void setup() {
  size(1000,1000);
}

void draw() {
  background(100, 2, 140);
  translate(500, 500);
  rotate(radians(r)); // rotate by 45 degrees
  r = r + dr;
  if (r==360) {
    dr = -1;
  }
  if (r==0) {
    dr = 1;
  }
  circle(200, 0, 100);
  circle(0, 200, 100);
  circle(-200, 0, 100);
  circle(0, -200, 100);
}
