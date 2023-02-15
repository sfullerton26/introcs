void setup() {
  size(1000,1000);
}

void draw() {
  background(185, 229, 237);
  translate(500,500);
  cat();
  translate(0, -150);
  sunglasses();
  translate(200,300);
  cat();
  translate(0, -150);
  sunglasses();

   
}
//I used my old code here from github
//https://github.com/sfullerton26/introcs/tree/main/functions_exercise
void cat() {
  push();
  translate(-500, -500);
  fill(227, 202, 59);
   triangle(420,294, 478, 250, 405, 208); // cat ear 1 left
   triangle(554, 252, 613, 290, 608, 203); // cat ear 2 right
   fill(245, 232, 59);
   circle(515, 365, 250); // main cat face
   fill(5,5,5);
   circle(471, 327, 30); // left cat eye
   circle(541, 327, 30); // right cat eye
   circle(506, 390, 17); // cat nose
   //wiskers
   line(425, 362, 487, 376); 
   line(427, 387, 487, 388);
   line(435, 408, 487, 400);
   line(521, 377, 577 ,366);
   line(523, 389, 580, 383);
   line(523,400, 575, 405);
  pop();
}
//I used janani's code here from her github
//https://github.com/JananiBhagat/intro-cs/tree/main/functions_exercise
void sunglasses() {
  push();
  translate(-400, -550);
  beginShape();
  fill(237, 176, 255);
  vertex(500, 500);
  vertex(200, 500);
  vertex(350, 600);
  vertex(400, 550);
  vertex(450, 600);
  vertex(600, 500);
  
  endShape(CLOSE);
  pop();
}
