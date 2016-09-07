/*
 * Lignes
 * Un système autonome qui dessine
 * des formes de manière aléatoire
 *
 * MW_2016
 * https://github.com/FreeArtBureau/ITERATIONS
 * www.iterations.fabprojects.codes
 *
 * end
 
 */

/////////////////////////// GLOBALS ////////////////////////////

float len = 300;      // Déclarer une variable pour la longeur de notre ligne.
float angle;         //  Déclarer une variable pour l'angle de rotation.

// On déclare une deuxième angle qui nous sert de valeur pour 
// varier les valeurs sin() et par la suite dont on sert pour
// aussi varier la longeur de nos lignes.
float angle2; 
float angleStep = 0.0750;
float angle2Step = 0.3;

/////////////////////////// SETUP ////////////////////////////

void setup() {
  size(500, 500);
  background(33);
  smooth();
  angle = radians(0);
  angle2 = radians(0);

  stroke(255, 50, 150);
  strokeWeight(1.3);
  frameRate(30);
}

/////////////////////////// DRAW ////////////////////////////
void draw() {
  
  // les translations ? 
  // lire par ici :
  // https://fr.flossmanuals.net/processing/les-transformations/
  pushMatrix();
  translate(width/2, height/2);
  rotate(angle);
  
  len = abs(sin(angle2*0.52)) * 150; 
  line(0, 0, len, len);
  popMatrix();

  angle += angleStep;  
  angle2 += angle2Step;

  // Activez ces lignes en dessus si vous voulez  
  // simplement faire un tour complet puis s'arrêter.
  /*
  if(angle >= radians(360)) {
   noLoop(); 
   }
   */
}

/////////////////////////// FUNCTIONS ////////////////////////////

