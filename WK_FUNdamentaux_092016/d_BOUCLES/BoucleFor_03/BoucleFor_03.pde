/*
 * BOUCLE_FOR_03
 * Trame + image
 *
 * MW_2016
 * https://github.com/FreeArtBureau/ITERATIONS
 * www.iterations.fabprojects.codes
 *
 *
 * end
 */

/////////////////////////// GLOBALS ////////////////////////////
import processing.pdf.*;
boolean SAVE_FRAME = false;

PImage IMG;

int MARGE = 50;
float DIA = 10;
int PAS = 10;
boolean AFFICHE_ELLIPSE, AFFICHE_CROIX = true;
/////////////////////////// SETUP ////////////////////////////

void setup() {
  background(0);
  smooth();
  noStroke();

  IMG = loadImage("van.jpg");
  size(IMG.width, IMG.height);
}

/////////////////////////// DRAW ////////////////////////////
void draw() {
  background(0);

  if (SAVE_FRAME == true) {
    beginRecord(PDF, "export.pdf");
  }
  float FILTER_CUTOFF = map(mouseX, 0, width, 1, 255);
  float FACT = map(mouseY, 0, height, 1, 50);

  for (int y=MARGE; y<height-MARGE; y+=PAS) {
    for (int x=MARGE; x<width-MARGE; x+=PAS) {  
      color c = IMG.get(x, y);

      if (c >= color(FILTER_CUTOFF)) {
        if (AFFICHE_ELLIPSE) {
          noStroke();
          fill(c); 
          float b = (brightness(c)/255) * FACT/4;

          ellipse(x, y, DIA+b, DIA+b);
        }
        if (AFFICHE_CROIX) {
          noFill();
          stroke(c);
          float l = (brightness(c)/255) * FACT/2;
          maCroix(x, y, l);
        }
      }
    }
  }
  if (SAVE_FRAME == true) {
    endRecord();
    SAVE_FRAME = false;
  }
}

/////////////////////////// FUNCTIONS ////////////////////////////
void keyPressed() {
  if (key == '+') {
    DIA++;
  }

  if (key == '-') {
    DIA--;
  }

  if (keyCode == RIGHT) {
    PAS++;
  }

  if (keyCode == LEFT) {
    PAS--;
  }

  if (key == 's') {
    SAVE_FRAME = true;
  }

  if (key == '1') {
    AFFICHE_ELLIPSE = !AFFICHE_ELLIPSE;
  }

  if (key == '2') {
    AFFICHE_CROIX = !AFFICHE_CROIX;
  }
}

