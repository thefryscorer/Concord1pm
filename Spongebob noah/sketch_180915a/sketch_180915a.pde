PImage background;


PImage bubble;
float xPos;
float yPos;

void setup(){
  size(500, 500);
  background = loadImage("background.png");
  bubble = loadImage("bubble.png");
  xPos = width/2;
  yPos = height/2;
}



void draw(){
  image(background, 0, 0, width, height);
  image(bubble, xPos - bubble,width/2, yPos - bubble.height/2);
}


if (areWeHovered()){
  image(karate, xPos- karate,width/2, yPos- karate.height/2);
}
image(bubble, xPos- bubble.width/2, yPos- bubble.height/2);