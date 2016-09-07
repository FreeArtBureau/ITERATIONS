/*
 * Dessins Aléatoires
 * Un système autonome qui dessine
 * des formes de manière aléatoire
 *
 * MW_2016
 * https://github.com/FreeArtBureau/ITERATIONS
 * www.iterations.fabprojects.codes
 *
 * end

*/

////////////////////////// GLOBALS ///////////////////////////

float xPos, yPos;
float angle;
float scaling = 0.973;

////////////////////////// SETUP ///////////////////////////
void setup() {
  size(640, 400);
  smooth();
  background(33);
  noStroke();
  xPos = width/2;
  yPos = height/2;
}

////////////////////////// DRAW ///////////////////////////
void draw() {

    //Algorithme d'animation simple (aléatoire)
    angle += random(-0.33, 0.34);
    xPos+= sin(angle) * scaling;
    yPos+= cos(angle) * scaling;
    
    color c = color(255,0,0);
    fill(c);
    //Dessiner notre forme aux positions xPos, yPos
    ellipse(xPos, yPos, 0.5, 0.5);
    
   //Essayez ces lignes ci-dessous :
    //float dia = sin(frameCount*0.005)*15;
    //ellipse(xPos, yPos, dia, dia);

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

