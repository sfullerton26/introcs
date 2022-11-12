/*
Copyright Samantha Fullerton
this my robot.
The colors of the robot are dark purple, light purple, light pink, cyan, white, black, red and green.
It has a face and can speak to you if you press the triangle.
The green square is the on and off button
The purple rectangle button moves the hands of the robot.
The purple circle button moves the legs of the robot.
*/
int c= 10;
int r = 1;
int dr = 1;
int w = 2;
int wr = 2;
void setup() {
  size(1000,1000);
}

void draw() {
background(133, 109, 33);
scale(0.7);
translate(300, 150);
fill(224, 77, 232);
rect(300, 100, 300, 500, 28); // base rectangle
fill(247, 185, 250);
rect(325,140, 250, 200); //pink rectangle screen
fill(157,29,163);
rect(325,600, 30, 100); //left leg rectangle
rect(545, 600, 30, 100); // right leg rectangle
rect(600,420, 200, 30); //right bottom arm rectangle
rect(100,420, 200, 30);//left bottom arm rectangle
push();
translate(800, 435);

// TODO: rotate 
rotate(radians(r));
r = r + dr;
if (r==90) {
  dr = -1;
}
if (r==0) {
  dr = 1;
}
// UNTRANSLATE
translate(-800, -435);
rect(785,215, 30, 200 );//left top arm rectangle (100,435)
fill(38,252,245);
rect(780,200,40,15); // cyan right leg
fill(157,29,163);
triangle(780,200,795,200,780,180);
triangle(820,200, 800, 200, 820, 180);
pop();

push();
translate(800, 485);
rotate(radians(r));
w = w + wr;
 if (w==180) {
  wr = -1;
}
if (w==0) {
  wr = 1;
}
translate(-800, -485);
rect(85, 215, 30, 200);
fill(38,252,245);
rect(80,200,40,15);
fill(157,29,163);
triangle(80,200, 100, 200, 80, 180);
triangle(120,200, 100, 200, 120, 180);
pop();

//rect(85, 215, 30, 200); //right top arm rectangle (800,435)

fill(250,247,250);
circle(100,435,50);
circle(800,435,50);
fill(0,0,0);
circle(400,180,c); // face circle
circle(490,180,c); //face circle
c = c + 1;
if (c == 55) {
  c=0;
}
fill(113,33,143);
rect(325, 390, 150, 15); //skinny rectangle button
circle(550,400, 25); // circle button
fill(38,252,245);
//rect(780,200,40,15); // cyan right leg
//rect(80,200,40,15); // cyan left leg
fill(157,29,163);
//triangle(780,200,795,200,780,180);
//triangle(820,200, 800, 200, 820, 180);
//triangle(80,200, 100, 200, 80, 180);
//triangle(120,200, 100, 200, 120, 180);
fill(113,33,143);
rect(405,230, 80,20); // face rectangle
fill(0,0,0);
circle(380, 500, 80);
fill(255,8,8);
triangle(345, 515, 420, 515, 380, 470);
fill(20,255,8);
square(500, 500, 70);
}
