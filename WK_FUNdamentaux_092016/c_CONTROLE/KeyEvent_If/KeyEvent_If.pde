/*
 * KEY_EVENTS_IF
 * description
 *
 * MW_2016
 * https://github.com/FreeArtBureau/ITERATIONS
 * www.iterations.fabprojects.codes
 *
 *
 * end
 */

/////////////////////////// GLOBALS ////////////////////////////

/////////////////////////// SETUP ////////////////////////////

void setup() {
  size(600, 420);
  background(33);
  smooth();
  noStroke();
  rectMode(CENTER);
}

/////////////////////////// DRAW ////////////////////////////
void draw() {
  background(33);
  //fill(0,255,0);
  /*
  if (keyPressed) {
   if (key == 'a') {
   fill(0, 0, 255);
   }
   
   if (key == 'b') {
   fill(200, 255, 0);
   }
   }
   */

  rect(width/2, height/2, 250, 250);
}

/////////////////////////// FUNCTIONS ////////////////////////////
void keyPressed() {
  if (key == 'a') {
    fill(0, 0, 255);
  }

  if (key == 'b') {
    fill(200, 255, 0);
  }
}

