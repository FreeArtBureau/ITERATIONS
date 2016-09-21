/*
 * KEYS_PATTERNS_01
 * Key interaction & writing ;–)
 *
 * MW_2016
 * https://github.com/FreeArtBureau/ITERATIONS
 * www.iterations.fabprojects.codes
 *
 *
 * end
 */

/////////////////////////// GLOBALS ////////////////////////////
PFont f;
int SEED;
char KEYS;
float XPOS, YPOS;
float LETTER_SIZE = 40;
float KERN = LETTER_SIZE*0.45;
/////////////////////////// SETUP ////////////////////////////

void setup() {
  size(600, 420);
  background(33);
  noStroke();
  smooth();
  SEED = (int)random(10000);
  rectMode(CENTER);
  XPOS = LETTER_SIZE*2;
  YPOS = LETTER_SIZE;
  KEYS = 'a';
  frameRate(12);
  f = createFont("Fira-sans", 12);
  textFont(f,12);
  textSize(12);
  text("Propositions sur la lettre 'a'", 30, height-30);
  
}

/////////////////////////// DRAW ////////////////////////////
void draw() {
  //keyPressed();
  
}

/////////////////////////// FUNCTIONS ////////////////////////////



