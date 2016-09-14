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

  motionAlgo(scaling);
  color c = img.get((int)xPos, (int)yPos);
  fill(c);
  float taille = oscillate(0.015, 65, "COS");
  float rotatation = oscillate(0.005, 360, "SIN");
  croix(xPos, yPos, taille, 5, c, rotatation);
}

///////////////////////// FUNCTIONS ///////////////////////
void keyPressed() {
  if (key == 's') {
    saveFrame("capture_###.png");
  }
}

