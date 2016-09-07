/*
 * Dessin Symmétrique
 * Un système autonome qui dessine
 * des formes symmétriques
 *
 * MW_2016
 * https://github.com/FreeArtBureau/ITERATIONS
 * www.iterations.fabprojects.codes
 *
 * end

*/

////////////////////////// GLOBALS ///////////////////////////

float angleStep = 30;
float xPos, yPos;
float angle;
float scaling = .073;

////////////////////////// SETUP ///////////////////////////
void setup() {
  size(400, 400);
  smooth();
  background(33);
  noStroke();
  fill(247,207,33);
}

////////////////////////// DRAW ///////////////////////////
void draw() {
  //Centrer notre forme
  translate(width/2, height/2);
  
  //Faire répéter le dessin grâce à une boucle FOR
  for (float theta=0; theta<360; theta+=angleStep) {
    
    //Algorithme d'animation simple (aléatoire)
    angle += random(-0.139, 0.129);
    xPos+= sin(angle) * scaling;
    yPos+= cos(angle) * scaling;

    //Dessiner notre forme aux positions xPos, yPos
    ellipse(xPos, yPos, 0.5, 0.5);
    
    //Faire pivoter notre forme
    rotate(radians(angleStep));
  }
}

////////////////////////// KEYS ///////////////////////////
void keyPressed() {
  if (key == 'q' || key == 'Q') {
    background(0);
    //RÉINITIALISER NOS PARAMÈTRES POUR RECOMMENCER
    xPos = 0;
    yPos = 0;
    translate(width/2, height/2);
  }
}

