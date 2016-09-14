/*
 * Dessin Aléatoire_03
 * Un système autonome qui dessine
 * des formes de manière aléatoire
 * Ici, on a rajouté une fonction de dessin
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
float scaling = 2.33;

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

  //notez la fonction en bas
  motionAlgo(scaling);

  color c = img.get((int)xPos, (int)yPos);
  fill(c);

  //notez la fonction oscillate() :
  float taille = oscillate(0.015, 35, "COS");
  croix(xPos, yPos, taille);


}

///////////////////////// FUNCTIONS ///////////////////////
void keyPressed() {
 if(key == 's'){
  saveFrame("capture_###.png");
 } 
}

void motionAlgo(float _scaling) {
  //Algorithme d'animation simple (aléatoire)
  angle += random(-0.33, 0.34);
  xPos+= sin(angle) * _scaling;
  yPos+= cos(angle) * _scaling;
  
  //Une strucure de contrôle pour tester si notre forme se déplace en dehors 
  // des limites de notre fenêtre et ensuite faire qqch en fonction
  if (xPos>width)xPos=0;
  if (xPos<0)xPos=width;
  if (yPos>height)yPos=0;
  if (yPos<0)yPos=height;
}

float oscillate(float _freq, float _amp, String _type) {
  float val=0;
  if (_type.equals("SIN")) {
    val = sin(frameCount*_freq)*_amp;
  }
  if (_type.equals("COS")) {
    val = cos(frameCount*_freq)*_amp;
  }
  return val;
}

// notre fonction de dessin
void croix(float _cntX, float _cntY, float _taille) {
  rectMode(CENTER);
  pushMatrix();
  translate(_cntX, _cntY);
  rect(0, 0, _taille, _taille/4);
  rect(0, 0, _taille/4, _taille);
  popMatrix();
}

