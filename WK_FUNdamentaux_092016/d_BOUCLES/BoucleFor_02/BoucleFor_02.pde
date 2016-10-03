/*
 * BOUCLE_FOR_02
 * Comment dessiner une trame de forme
 *
 * MW_2016
 * https://github.com/FreeArtBureau/ITERATIONS
 * www.iterations.fabprojects.codes
 *
 *
 * end
 */

/////////////////////////// GLOBALS ////////////////////////////
int MARGE = 25;
float DIA = 5;
int PAS = 10;
/////////////////////////// SETUP ////////////////////////////

void setup() {
  size(600, 460);
  background(0);
  smooth();
  noStroke();
}

/////////////////////////// DRAW ////////////////////////////
void draw() {
  background(0);

  for (int y=MARGE; y<height-MARGE; y+=PAS) {
    for (int x=MARGE; x<width-MARGE; x+=PAS) {     
      ellipse(x, y, DIA, DIA);
    }
  }
}

/////////////////////////// FUNCTIONS ////////////////////////////

