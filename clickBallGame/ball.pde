void ball(){
  background (0);


  ellipse(ballX, ballY, r, r); //makes the ball
  
  
  ballX = ballX + rX; //makes the ball move by adding the random value to the ball's current position
  ballY = ballY + rY;
  
  if (ballX <= r/2 || ballX >= 750){ //to make the ball bounce of the edges
    rX = rX * -1.04; //multiply by 1.04 so the ball will get faster everytime it bounces off an edge (https://www.youtube.com/watch?v=YIKRXl3wH8Y)
  }
  
    if (ballY <= r/2 || ballY >= 750){
    rY = rY * -1.04;
  }
  
  if (currentTime <= 10){ //turns everything but background red to signal there are 10 seconds left
    fill(255,0,0);
}
  
}



void mousePressed(){
  
  float d = dist(mouseX, mouseY, ballX, ballY); //to know if the mouse is over the ball (https://processing.org/examples/distance2d.html) 
  
  if (d < r/2){
    score = score + 1; //adds a score every time the mouse is clicked when hovered over the ball
  }
  
}
