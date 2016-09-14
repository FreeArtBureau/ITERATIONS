/*
 * Dessins Aléatoires
 * Un système autonome qui dessine
 * des formes de manière aléatoire
 *
 * MW_2016
 * https://github.com/FreeArtBureau/ITERATIONS
 *
 * end
 
 */

////////////////////////// GLOBALS ///////////////////////////

float xPos, yPos;
float angle;
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
  //notez la fonction en bas
  motionAlgo(0.973);

  color c = color(255, 0, 0);
  fill(c);

  //notez la fonction oscillate() :
  float dia = oscillate(0.005, 15, "COS");
  ellipse(xPos, yPos, dia, dia);
}

////////////////////////// KEYS ///////////////////////////
void keyPressed() {
  if (key == 'q' || key == 'Q') {
    background(0);
    xPos = 0;
    yPos = 0;
    translate(width/2, height/2);
  }
}

////////////////////////// FUNCTIONS ////////////////////


void motionAlgo(float _scaling) {
  //Algorithme d'animation simple (aléatoire)
  angle += random(-0.33, 0.34);
  xPos+= sin(angle) * _scaling;
  yPos+= cos(angle) * _scaling;
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

