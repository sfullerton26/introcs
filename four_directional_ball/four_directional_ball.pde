int x = 20;
int y = 20;
int dy = 1;
int dx = 0;
void setup() {
  size(500,500);
}

void draw() {
  background(20, 14, 200);
  // if hit bottom left, move right
  circle(x, y, 20);
  y = y + dy;
  x = x + dx;
  // if start at top left corner, move down
  if (y == 480 && x == 20) {
    println("x equals" + x);
    dx = 2;
    dy = 0;
  }
  //if hit bottom right, move up
  if (x == 480 && y == 480) {
    dx = 0;
    dy = -2;
  }
  // if hit top right, move left
  if (x == 480 && y == 20) {
    dx = -2;
    dy = 0;
  }
  //if top corner, move down, loop again !
  if (x == 20 && y == 20) {
    dx = 0;
    dy = 2;
  }
}
