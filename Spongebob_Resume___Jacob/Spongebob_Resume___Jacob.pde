PImage background;

//variables for our bubble
PImage bubble;
PImage karate; // The karate image
float xPos;
float yPos;


void setup() {
  size(500, 500);
  background = loadImage("background.png");
   bubble = loadImage("bubble.png");
   karate = loadImage("karate.png");


 //Set the bubble to be in the middle
  xPos = width/2;
  yPos = height/2;
}
void draw () {
  image(background, 0, 0, width, height);
 
  //Draw the karate
  if (areWeHovered()){
  image(karate, xPos - karate.width/2, yPos - karate.height/2);}
  //Draw the bubble at it's position
  image(bubble, xPos - bubble.width/2, yPos - bubble.height/2);
 
}

boolean areWeHovered() {
  // Check the x axis
  if (abs(mouseX - xPos) > bubble.width/2) {
    return false;
  }
  
  //Check the y axis
  if (abs(mouseY - yPos) > bubble.height/2) {
    return false;
  }
  
  return true; // If we haven't said "no" yet the answer is "yes" 
}
    
    