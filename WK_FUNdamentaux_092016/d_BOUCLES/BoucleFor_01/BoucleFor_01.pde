/*
 * BOUCLE_FOR_01
 * Demonstrates iteration :
 * Repeating an operation
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
  size(1200, 600);
  background(0);
  smooth();
  noStroke();

  for (int i=0; i<5000; i++) {
    
    float x = random(width);
    float y = random(height);
    float dia = random(1, 9); 
    ellipse(x, y, dia, dia);
  }
}

/////////////////////////// DRAW ////////////////////////////
void draw() {
  //background(0);
}

/////////////////////////// FUNCTIONS ////////////////////////////

