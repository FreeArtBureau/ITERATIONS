/*
 * KEY_EVENTS_SWITCH_02
 * A slightly better version ;–)
 *
 * MW_2016
 * https://github.com/FreeArtBureau/ITERATIONS
 * www.iterations.fabprojects.codes
 *
 *
 * end
 */

/////////////////////////// GLOBALS ////////////////////////////
char KEYS;
/////////////////////////// SETUP ////////////////////////////

void setup() {
  size(600, 420);
  background(33);
  smooth();
  noStroke();
  rectMode(CENTER);
  KEYS = 'a';
}

/////////////////////////// DRAW ////////////////////////////
void draw() {
  background(33);

  keysInteraction();
  rect(width/2, height/2, 250, 250);
}

/////////////////////////// FUNCTIONS ////////////////////////////

void keyPressed() {
  KEYS=key;
}

void keysInteraction(){
   switch(KEYS) {
  case 'a':
    fill(200, 255, 0);
    break;
  case 'b':
    fill(0, 0, 255);
    break;
  case 'c':
    fill(255, 0, 200);
    break;
  
    case 'd':
    fill(255, 200, 100);
    break;
  }
 
}

