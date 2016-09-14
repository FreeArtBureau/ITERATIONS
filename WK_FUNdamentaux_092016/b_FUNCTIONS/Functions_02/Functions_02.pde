/*
 * FUNCTIONS_02 : 
 * 
 * Ce sketch démontre une fonction simple de dessin
 * ET une fonction qui retourne une valeur
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
  size(400, 400);
  background(33);
  smooth();
  noStroke();
}

/////////////////////////// DRAW ////////////////////////////
void draw() {
  background(33);
  fill(0, 0, 255);

  // On fait appel à nos 2 fonctions
  float taille = oscillate();
  croix(width/2, height/2, taille);
}

/////////////////////////// FUNCTIONS ////////////////////////////
// Voici notre nouvelle fonction qui retourne une valeur
float oscillate() {
  float val = sin(frameCount*0.015)*250;
  return val;
}




// Voici notre fonction de dessin
void croix(float _cntX, float _cntY, float _taille) {
  rectMode(CENTER);
  pushMatrix();
  translate(_cntX, _cntY);
  rect(0, 0, _taille, _taille/4);
  rect(0, 0, _taille/4, _taille);
  popMatrix();
}

