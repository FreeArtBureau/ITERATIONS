/*
 * Dessin Aléatoire_02
 * Un système autonome qui dessine
 * des formes de manière aléatoire
 * Ici, nous utilisons une photo pour colorier notre forme
 *
 * MW_2016
 * https://github.com/FreeArtBureau/ITERATIONS
 * www.iterations.fabprojects.codes
 *
 * end
 
 */

////////////////////////// GLOBALS ///////////////////////////
PImage img;
float xPos, yPos;
float angle;
float scaling = 0.93;

////////////////////////// SETUP ///////////////////////////
void setup() {
  //size(500, 350);
  smooth();
  background(33);
  noStroke();
  img = loadImage("blue.png");
  size(img.width, img.height);
  xPos = width/2;
  yPos = height/2;
}

////////////////////////// DRAW ///////////////////////////
void draw() {

  //Algorithme d'animation simple (aléatoire)
  angle += random(-0.43, 0.44);
  xPos+= sin(angle) * scaling;
  yPos+= cos(angle) * scaling;

  //Récuperer la couleur de l'image à la position actuelle
  color c = img.get((int)xPos, (int)yPos);
  fill(c);

  //Dessiner notre forme aux positions xPos, yPos et avec une taille en diamètre
  // dterminée par la variable dia
  float dia = sin(frameCount*0.005)*15;
  ellipse(xPos, yPos, dia, dia);
  

  //Une strucure de contrôle pour tester si notre forme se déplace en dehors 
  // des limites de notre fenêtre et ensuite faire qqch en fonction
  if (xPos>width)xPos=0;
  if (xPos<0)xPos=width;
  if (yPos>height)yPos=0;
  if (yPos<0)yPos=height;
}

///////////////////////// FUNCTIONS ///////////////////////
void keyPressed() {
 if(key == 's'){
  saveFrame("capture_###.png");
 } 
}


