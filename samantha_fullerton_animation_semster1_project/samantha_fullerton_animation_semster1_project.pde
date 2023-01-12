/*
Copyright Samantha Fullerton
This is my project.
My animation turns a tv on and off and can switch between channel 1 and channel 2.
You are able do this by following the directions and clicking the specific buttons (the shapes).
The inspiration of my project is a retro tv and a remote control being used.
Channel 1 is a cat and channel 2 is a broken channel that tells you turn the tv off.
I tried creating channel 1 with the cat chaging its eye shape and color but that did not end up working.
*/
int x;
int y;
float rectx;
float recty;
String remoteChoice = "NotChosen";
int r;
int g;
int b;
float size;

void setup() {
size(1300, 1300);
textSize(20);
}

void draw() {
 background (207, 177, 151);
 fill (107, 69, 35);
 rect(150, 150, 700, 500);//brown base of the tv
 fill(125, 128, 133);
 rect(200, 180, 600, 400, 18); // screen of the tv
 strokeWeight(4);
 line(420, 20, 450, 150); // left tv antenna
 line(650, 20, 580, 150); // right tv antenna
 fill(5,5,5);
 rect(950, 100, 300, 600, 18); // tv remote base
 fill(79, 244, 56);
 circle(1010, 150, 60); // tv remote "on" button
 fill(5,5,5);
 text("ON", width / 3 + 565, 160);
 fill(255, 0, 0);
 circle(1190, 150, 60); // tv remote "off" button
 fill(5, 5, 5);
 text("OFF", width / 3 + 745, 160);
 fill(56, 87, 244);
 rect(1005, 210, 65, 65, 18); // channel one
 fill(5,5,5);
 text("1", width / 3 + 600, 250);
 fill(56, 87, 244);
 rect(1120,210, 65, 65, 18); // channel two
 fill(5,5,5);
 text("2", width / 3 + 720, 250);
 text("Directions:", width / 3 - 399, 696);
 text("Step 1: Click the ON button on the remote to turn on the tv", width / 3 - 399, 730);
 text("Step 2: Click button 1 to go to Channel 1 OR Click button 2 to go to Channel 2", width / 3 - 399, 764);
 text("Step 3: When you are finished, click the OFF button", width / 3 - 399, 784);
 if (remoteChoice == "ON") {
   fill(199, 197, 197);
   circle (x,y, 10);
   x = (int) random(210,791);
   y = (int) random(186,577);
   fill(15, 15, 15);
   circle(x,y, 10);
   x = (int) random(210,791);
   y = (int) random(186, 577);
   fill(209, 207, 207);
   circle(x,y,10);
   x = (int) random(210, 791);
   y = (int) random(186, 577);
   //static shapes
 } 
 if (remoteChoice == "1") {
   fill(180, 240,219);
   rect(200, 180, 600, 400, 18); // screen color
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
 }
 if (remoteChoice == "OFF") {
   fill(5,5,5);
   rect(200, 180, 600, 400, 18); // OFF screen
 }
 if (remoteChoice == "NotChosen") {
   fill(125, 128, 133);
 rect(200, 180, 600, 400, 18);
 }
 if (remoteChoice == "2") {
   fill(250, 200, 242);
   rect(200, 180, 600, 400, 18); // screen
   r = (int) random(256);
   g = (int) random(256);
   b = (int) random(256);
   rectx = (float) random(210, 745);
   recty = (float) random(186, 500);
   size = random(50, 80);
   fill(r,g,b);
   rect(rectx, recty, size, size); // random error rectangles
   fill(255,0,0);
   text("ERROR! TURN THE TV OFF!!", width / 3 - 42 , 370);
 }
}

void mousePressed() {
  if (mouseX > width / 3 + 549 &&
    mouseX < width / 3 + 604 &&
    mouseY > 124 &&
    mouseY < 174) {
    remoteChoice = "ON"; 
  } else if (
    mouseX > 1190 - 30 &&
    mouseX < 1190 + 30 &&
    mouseY > 123 &&
    mouseY < 180) {
    remoteChoice = "OFF";
  } else if (
      mouseX > width / 3 + 575 &&
      mouseX < width / 3 + 635 &&
      mouseY > 216 &&
      mouseY < 275) {
      remoteChoice = "1";
  } else if (
       mouseX > 1120 - 65 &&
       mouseX < 1120 + 65 &&
       mouseY > 216 &&
       mouseY < 276) {
         remoteChoice = "2";
  } else {
    remoteChoice = "NotChosen";
  }
  
println(remoteChoice);   
println(mouseX, mouseY);
}
