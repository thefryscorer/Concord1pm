PImage background;

// Variables for our bubbles
PImage bubble;
PImage karate; // The karate image
float xPos;
float yPos;

void setup() {
  size(500, 500);
  background = loadImage("background.png", "png");
  bubble = loadImage("bubble.png");
  karate = loadImage("karate.png");
  
  // Set the bubble to be in the middle
  xPos = width/2;
  yPos = height/2;
}

void draw () {
  image(background, 0, 0, width, height);
  
  //Draw the karate
  if (areWeHovered()){
  image(karate, xPos - karate.width/2, yPos - karate.height/2);
  }
  
  image(bubble, xPos - bubble.width/2, yPos - bubble.height/2);
}

boolean areWeHovered() {
  // Check the x axis
  // If the distance between the xPos and our mouse is *more* that the
  // radius, then we are too far away and the answer is "no" (false)
  if(abs(mouseX - xPos) > bubble.width){
    return false;
  }

  //Check the yaxis
  if(abs(mouseY - yPos) > bubble.height) {
    return false; // If we haven't said "no" yet the answer is yes
  }
  
  return true;
}