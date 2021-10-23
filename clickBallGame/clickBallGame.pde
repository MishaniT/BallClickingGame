float ballX = 400; //ball postion
float ballY = 300; 
int r = 100; //ball radius
int score = 0;
int currentTime = 30;
int maxTime = 30;
float rX = random(5, 10); //to make the ball will bounce differently every game
float rY = random(5, 10);
String scoreS;
String timeS;
String gameOver = "GAME OVER";

PFont font;
int fontSize = 24;

void setup() {
  size(800, 800, P3D);
  font = createFont("Arial", fontSize);
  textFont(font, fontSize);
}

void draw() {
  noStroke();
  int time = millis();
  
  if (currentTime > 0){ //to make the game is 30 seconds long
  currentTime = abs(maxTime - int(time/1000));
  
  ball(); //run the ball code 
  
  timeS = "Time: " + currentTime; //display the time
  scoreS = "Score: " + score; //display the score
  
  text(timeS, 10, fontSize);
  
  text(scoreS, 25, 70, fontSize);
  }
  else { //appears when 30 seconds are over
    background (0);
    fill (255);
    text(gameOver, 325, 400);
    text(scoreS, 350, 470, fontSize);
  }
  
}
