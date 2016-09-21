/*
 * KEY_EVENTS_SWITCH
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
int choix;
/////////////////////////// SETUP ////////////////////////////

void setup() {
  size(600, 420);
  background(33);
  smooth();
  noStroke();
  rectMode(CENTER);
  choix = 0;
}

/////////////////////////// DRAW ////////////////////////////
void draw() {
  background(33);
    
  switch(choix){
    case 0:
    fill(200, 255, 0);
    break;
    case 1:
    fill(0, 0, 255);
    break;
    case 2:
    fill(255, 0, 200);
    break;
  }

  rect(width/2, height/2, 250, 250);
}

/////////////////////////// FUNCTIONS ////////////////////////////
void keyPressed() {
  if (key == 'a') {
    choix=0;
  }

  if (key == 'b') {
    choix=1;
  }
  
   if (key == 'c') {
    choix=2;
  }
}

