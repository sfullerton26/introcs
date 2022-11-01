float sam = 0;
float a = 200;
float c= 200;
int s=100;
int b = 0;
boolean t = true;
void setup() {
  size(1000, 1000);
}

void draw() {
  background(0, 0, 0);
  fill(255, 0, 0, s);
  s=s+1;
  circle (500, 500, 300);
  fill(255, 255, 255);
  triangle(0, 0, 0, 99, a, 50);
  a = a + 2;
  square(500, c, 50);
  c = c + 2;
  if (c == 1000){
    c=0;
  }
  
  square(sam, sam, 300);
  sam = sam - 5;

  
 
}
