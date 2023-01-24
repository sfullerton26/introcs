void setup (){
  size(1000, 1000);
}

void draw() {
  translate(500,500);
  cat();
  
  translate(200, 300);
  cat();
  
  translate(-400, -500);
  cat();
}

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
