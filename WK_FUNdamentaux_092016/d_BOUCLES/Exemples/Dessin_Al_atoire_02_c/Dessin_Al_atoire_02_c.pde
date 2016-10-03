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
float brushSize = 10;
int brushDensity = 50;

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

 

  //Essayez ces lignes ci-dessous :
   for(int i=0; i<brushDensity; i++) {
    float dia = sin(frameCount*0.005)*15;
    float xDiff = random(-brushSize,brushSize);
    float yDiff = random(-brushSize,brushSize);
     //Récuperer la couleur de l'image à la position actuelle
  color c = img.get(int(xPos+xDiff), int(yPos+yDiff));
  fill(c);
    ellipse(xPos+xDiff, yPos+yDiff, 0.5, 0.5);
   }
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


