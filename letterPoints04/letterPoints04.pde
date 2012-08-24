/*
LetterPoints!
--------------
A tool for drawing vector font style letters
and saving out the line info for a code generated font.
All the letters are defined on a 5x7 grid.
Current output is formatted as needed for the PixelPyros project.

@vlh
val@valhead.com

*/

import controlP5.*;
ControlP5 cp5;

PrintWriter output;
PFont myFont;
PFont font = createFont("arial", 20);

//Where we draw the lines so we can see what we're doing
PVector lastDrawPoint = new PVector(0, 0);
PVector drawPoint = new PVector(0,0);

//Saving the lines as points on our grid
PVector lastGridPoint = new PVector(0, 0);
PVector gridPoint = new PVector(0,0);

//Storing where our grid is drawn so we can compare points and snap to the grid
int [] xVals = new int[5];
int [] yVals = new int[7];

//tolerance for how close to the grid points we need to be (grid lines are 50 apart)
int margin = 25;

//positioning things
int zoom = 5;
int padding = 50;

//The letter we're currently defining. (Entered into the fancy input box)
String currLetter = "";


void setup() {
  size(300, 500);
  background(50);

  myFont = createFont("arial",3);

  //draw me a grid to use, please! 
  drawGrid();
  addInstructions();

  // Create a new file
  output = createWriter("letters"+minute()+second()+".txt");
 
 
 //the input field
 cp5 = new ControlP5(this);

  cp5.addTextfield("letter")
    .setPosition(padding, 390)
    .setSize(50, 30)
    .setFont(font)
    .setFocus(true)
    .setColor(color(200))
    ;

  textFont(font);
 }

void draw() {
// nothin'
}


void mousePressed() {
  strokeWeight(4);
  stroke(200, 0, 255);
  
 if (mouseY < 375) { //only bother if we are remotely near the grid
 
   snapToGrid(new PVector(mouseX, mouseY));    
   
    if (lastDrawPoint.x > 0) {
      
      line(lastDrawPoint.x, lastDrawPoint.y, drawPoint.x, drawPoint.y);
      
      //one for us to see now
      println(currLetter + ".addLine(" + round(lastGridPoint.x) + " , " + round(lastGridPoint.y) + " , " + round(gridPoint.x) + " , " + round(gridPoint.y) + ");" );
    
      //for the text file later
      output.println(currLetter + ".addLine(" + round(lastGridPoint.x) + " , " + round(lastGridPoint.y) + " , " + round(gridPoint.x) + " , " + round(gridPoint.y) + ");" );  
         
      //set last draw to current draw position for next time around
      lastDrawPoint.x = drawPoint.x;
      lastDrawPoint.y = drawPoint.y;
      
      lastGridPoint.x = gridPoint.x;
      lastGridPoint.y = gridPoint.y;
  } 
  else {
      //even if there was no last draw point, let's update all the things
      lastDrawPoint.x = drawPoint.x;
      lastDrawPoint.y = drawPoint.y;
      
      lastGridPoint.x = gridPoint.x;
      lastGridPoint.y = gridPoint.y;
  } 

 }
}


void snapToGrid(PVector pos) {
    //calculate the proper grid positions because no one can click that accurately
    //for X
    for (int i =0; i< xVals.length; i++) {
      //which x value is it closest to?
      if (pos.x > xVals[i]-margin && pos.x < xVals[i]+margin) {
        drawPoint.x = xVals[i];
        gridPoint.x =i;
      } 
    } 
   //for Y
    for (int j =0; j< yVals.length; j++) {
    //which x value is it closest to
    if (pos.y > yVals[j]-margin && pos.y < yVals[j]+margin) {
      drawPoint.y = yVals[j];
      gridPoint.y = j; 
    } 
   }

}


void keyPressed() {
  /*
  yes, using key commands for this means false saves, clears and new lines when drawing
  S,C and N. there are worse things :)
  */
  
  if (keyCode == 83) { //s for save 
    output.println();
    output.println("letters['" + currLetter + "'] =" + currLetter + ";"); 
   println();
    println("letters['" + currLetter + "'] =" + currLetter + ";"); 
  }


  if (keyCode == 67) { //c to clear all, or c for crap, I messed that one up
    fill(50);
    noStroke();
    rect(0, 0, width, height);
    drawGrid();
    addInstructions();
    println("-------");
    output.println("-------");
  }

  if (keyCode == 78) { //n for new line so it doesn't join with the last
    lastDrawPoint.x = 0;
    lastDrawPoint.y = 0;
//    println("-");
  }
  
  if (keyCode == 27) { //escape to exit
    println("close");  
    output.flush(); // Writes the remaining data to the file
    output.close(); // Finishes the file
   }
}  


void drawGrid() {
  stroke(200);
  translate(padding, padding);
  scale(zoom, zoom);
  
  strokeWeight (.1); 
  for (int i= 0; i<70; i= i+10) {
    //change the stroke colour for the middle one only
    if (i== 30) {
      stroke(0, 255,0);
    }else {
      stroke(200);
    }
    yVals[i/10] = i*5 + padding;
    line(0, i, 40, i);
  }

  for (int i = 0; i<50; i= i+10) { 
    //change the stroke colour for the middle one only 
    if (i== 20) {
      stroke(0, 255,0);
    }else {
      stroke(200);
    }
    
    xVals[i/10] = i*5 + padding; 
    line(i, 0, i, 60);
  }
}

void addInstructions() {
  fill(250);
   textFont(myFont, 2);
  text("c = clear, n = new line, s = save letter", 0,62,50, 20);
}

public void letter(String theText) {
  // automatically receives results from controller input
  currLetter = theText;
  
  output.println("Letter " + currLetter +";");
  println("Letter " + currLetter +";");
}

