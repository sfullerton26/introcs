String userChoice = "NotChosen";
int randomInt = -1;
String computerChoice = "Notchosen";
int computerPoints = 0;
int yourPoints = 0;
int draws = 0;
int addpoint = 1;
void setup() {
  size(700, 700);
  textSize(30);
}

void draw() {
  background(200, 30, 255);
  text("Let's Play Rock Paper Scissors!", width / 3 + 10, 30);
  text ("You:", width / 3 - 200, 560);
  text("Computer:", width / 3 + 250, 560);
  text("Points:", width / 3 + 100, 520);
  text("Draws:", width / 3 + 100, 650);
  if (userChoice == "Rock") {
    fill(0, 0, 255);
  } else {
    fill(255);
  }
  rect(width / 3 - 100, 100, 100, 50);
  if (userChoice == "Paper") {
    fill(0, 0, 255);
  } else {
    fill(255);
  }
  rect(width / 3 + 50, 100, 100, 50);
  if (userChoice == "Scissors") {
    fill( 0, 0, 255);
  } else {
    fill(255);
  }
  rect(width / 3 + 200, 100, 100, 50);
  fill(0);
  text("Rock", width / 3 - 100, 130);
  text("Paper", width / 3 + 50, 130);
  text("Scissors", width / 3 + 200, 130);
  //computer choice
  if (randomInt == 0) {
    computerChoice = "Rock";
  } else if (randomInt == 1) {
    computerChoice = "Paper";
  } else if (randomInt == 2) {
    computerChoice = "Scissors";
  } else {
    computerChoice = "NotChosen";
  }
  text("computer: ", width / 2, 400);
  text(computerChoice, width / 2, 440);
  if ((userChoice == "Rock" && computerChoice == "Paper") ||
    (userChoice == "Paper" && computerChoice == "Scissors") ||
    (userChoice == "Scissors" && computerChoice == "Rock") )
  {
    text("Comupter Win!", width / 3, 200, 100);
    computerPoints = computerPoints + addpoint;
    text (computerPoints, width / 3 + 390, 560);
  }
  if ((userChoice == "Rock" && computerChoice == "Scissors") ||
    (userChoice == "Paper" && computerChoice == "Rock") ||
    (userChoice == "Scissors" && computerChoice == "Paper") )
  {
    text("You Win!", width / 3, 200, 100);
    yourPoints = yourPoints + 1;
  }
  if ((userChoice == "Rock" && computerChoice == "Rock") ||
    (userChoice == "Paper" && computerChoice == "Paper") ||
    (userChoice == "Scissors" && computerChoice == "Scissors") )
  {
    text("Draw!", width / 3, 200, 100);
    draws = draws + 1;
  }
}

void mousePressed() {
  if (mouseX > width /3 - 100 &&
    mouseX < width / 3 &&
    mouseY > 100 &&
    mouseY < 150) {
    userChoice = "Rock";
    randomInt = (int) random(3);
  } else if (
    mouseX > width / 3 + 50 &&
    mouseX < width / 3 + 150 &&
    mouseY > 100 &&
    mouseY < 150) {
    userChoice = "Paper";
    randomInt = (int) random(3);
  } else if (
    mouseX > width / 3 + 200 &&
    mouseX < width / 3 + 300 &&
    mouseY > 100 &&
    mouseY < 150) {
    userChoice = "Scissors";
    randomInt = (int) random(3);
  } else {
    userChoice = "Not Chosen";
    randomInt = -1;
  }

  println(userChoice);
}
