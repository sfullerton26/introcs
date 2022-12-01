int x;
int y;
int xg;
int yg;
int xb;
int yb;
int xy;
int yl;
void setup() {
  size(600,600);
}

void draw() {
 fill(255, 0, 0);
 circle (x, y, 30);
 x = (int) random(301);
 y = (int) random(301);
 
 
 
 fill(0, 255, 0);
 circle (xg, yg, 30);
 xg = (int) random(300, 601);
 yg = (int) random(301);
 
 fill(0, 0, 255);
 circle(xb, yb, 30);
 xb = (int) random(300, 601);
 yb = (int) random(301, 601);
 
 fill(232, 235, 52);
 circle(xy, yl, 30);
 xy = (int) random(301);
 yl = (int) random(301, 600);
}
