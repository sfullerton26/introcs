String t = "Hello 123";
int diameter = 100;
float len = 100;
boolean b = true;

void setup() { // called once
  size(600, 1000);
}

void draw() { // called in a loop
 background(100, 100, 100);
 fill (30, 200, 1);
 circle (300, 300, diameter);
 if (b == true) {
   diameter = diameter + 1;
 }
 
 fill(0, 50, 200);
 square (0, 0, len);
 if (b == true) {
   len = len + 0.2;
 }
 
 textSize(50);
 text(t, 400, 100);
}

void mousePressed() {
  t = "Bye";
}

void mouseReleased() {
  t = "Hello";
}

void keyPressed() {
  if (key == 'k') {
  t = "cool";
  b = false;
  } else {
    t = "Among Us";
    b= true;
  }
}
