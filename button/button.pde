//Global Variables
float quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight, purple=#2C08FF;
color green=#CBFFE8, orange=#FFBD7E, resetButtonColour=#FFFFFF, buttonFill;//Not Night Mode Friendly Colors
String buttonText2= "Or Me";
PFont buttonFont;
//
void setup() 
{
  size (500, 500);
  //
  //Population
  int centerX = width/2;
  int centerY = height/2;
  int centeringButtonWidth = width*1/4;
  int centeringButtonHeight = height*1/4;
  quitButtonX = centerX - centeringButtonWidth;
  quitButtonY = centerY - centeringButtonHeight;
  quitButtonWidth = width*1/2 ;
  quitButtonHeight = height*1/2;


println("Start of Console");
  //printArray(fontList); //For listing all possible fonts to choose, then createFont
  buttonFont = createFont ("Harrington", 55); 




}//End Setup
//
void draw() 
{
  //Hover-over
  if (mouseX>quitButtonX && mouseX<quitButtonX+quitButtonWidth && mouseY>quitButtonY&& mouseY<quitButtonY+quitButtonHeight) {
    buttonFill = green;
  } else {
    buttonFill = orange;
  }//End Hover-Over
  fill(buttonFill); //2-colours to start, remember that nightmode adds choice
  rect(quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight);
  fill(resetButtonColour);
  //
  //Repeating CONSOLE values illustrating mouseX and mouseY related to a formula, mouse buttons
  //println("X-Value", quitButtonX, "\t", mouseX, "\t", quitButtonX+quitButtonWidth, "t\t Look at the middle value");
  //println("Y-Value", quitButtonY, "\t", mouseY, "\t", quitButtonY+quitButtonHeight, "t\t Look at the middle value");
  fill(purple); //Ink, hexidecimal copied from Color Selector
  textAlign (CENTER, CENTER); //Align X&Y, see Processing.org / Reference
  //Values: [LEFT | CENTER | RIGHT] & [TOP | CENTER | BOTTOM | BASELINE]
  textFont(buttonFont, 25); //Change the number until it fits, largest font size
  //
text(buttonText2, quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight);







}//End draw
//
void keyPressed() 
{
  if (key=='q' || key=='Q') exit();
}//End keyPressed
//
void mousePressed() 
{
  if (mouseX>quitButtonX && mouseX<quitButtonX+quitButtonWidth && mouseY>quitButtonY&& mouseY<quitButtonY+quitButtonHeight) exit();
}//End mousePressed
//
//End MAIN Program
