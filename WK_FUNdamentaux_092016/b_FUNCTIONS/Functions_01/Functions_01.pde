/*
 * FUNCTIONS_01 : 
 * 
 * Ce sketch démontre une fonction simple de dessin
 *
 * Lire un tutoriel sur les fonctions/méthodes :
 * https://fr.flossmanuals.net/processing/les-methodes/
 *
 * MW_2016
 * https://github.com/FreeArtBureau/ITERATIONS
 * www.iterations.fabprojects.codes
 *
 * end
 
 */

/////////////////////////// GLOBALS ////////////////////////////

/////////////////////////// SETUP ////////////////////////////

void setup() {
  size(400, 220);
  background(33);
  smooth();
  noStroke();
  // On fait appel à notre fonction
  fill(0, 0, 255);
  croix(100, 100, 100);

  fill(150, 255, 0);
  croix(225, 100, 100);
 
  fill(255, 200, 0);
  croix(325, 100, 50);
}

/////////////////////////// DRAW ////////////////////////////
void draw() {
}

/////////////////////////// FUNCTIONS ////////////////////////////
// Voici notre fonction 
// - Elle a un nom désigné par nous même
// - Des arguments entre parathèses
// - la définition entre accolades

void croix(float _cntX, float _cntY, float _taille) {
  rectMode(CENTER);
  pushMatrix();
  translate(_cntX, _cntY);
  rect(0, 0, _taille, _taille/4);
  rect(0, 0, _taille/4, _taille);
  popMatrix();
}

