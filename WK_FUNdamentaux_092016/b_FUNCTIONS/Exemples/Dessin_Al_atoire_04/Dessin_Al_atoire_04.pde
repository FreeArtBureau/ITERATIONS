/*
 * Dessin Aléatoire_04
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
  rectMode(CENTER);
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
  float taille = sin(frameCount*0.025)*95;
  float rotatation = sin(frameCount*0.025)*360;
  
  //ellipse(xPos, yPos, dia, dia);
   croix(xPos, yPos,taille, 100, c, rotatation);

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

/*
 * @param _x > position sur l'axe x
 * @param _y > position sur l'axe y
 * @param _len > longeur/taille de ma croix
 */
void croix(float _x, float _y, float _len, float _fact, color _c, float _angle) {
  pushMatrix();
  translate(_x, _y);
  rotate(radians(_angle));
  fill(_c);
  rect(0, 0, _len, _len/_fact);
  rect(0, 0, _len/_fact, _len);
  popMatrix();
}

