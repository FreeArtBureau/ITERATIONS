/*
 * RANDOM_CHOICE_02
 * A little game in the making !!!
 *
 * MW_2016
 * https://github.com/FreeArtBureau/ITERATIONS
 * www.iterations.fabprojects.codes
 *
 *
 * end
 */

/////////////////////////// GLOBALS ////////////////////////////
int xPos, yPos;
int choix;
int taille = 10;
/////////////////////////// SETUP ////////////////////////////

void setup() {
  size(300, 220);
  background(0);
  smooth();
  noStroke();
  textSize(173);
  // Voir la fonction en bas
  calculate();
  
  xPos = 200;
  yPos = 110;
  frameRate(12);
}

/////////////////////////// DRAW ////////////////////////////
void draw() {

  fill(150, 200, 255);
  rect(xPos, yPos, taille, taille);

  //calculate();
  //instructions();
}

/////////////////////////// FUNCTIONS ////////////////////////////
void keyPressed() {
  if (key == 'r') {
    //un nouveau choix
    calculate();
    // mettre à jour nos positions :
    instructions();
  }
  
  if(key == 'q'){
   setup(); 
  }
}

void instructions() {
  if (choix == 0) {
    //xPos = xPos;
    //yPos = yPos;
  }

  if (choix == 1) {
    xPos = xPos+taille;
  }

  if (choix == 2) {
    xPos = xPos-taille;
  }

  if (choix == 3) {
    yPos = yPos+taille;
  }

  if (choix == 4) {
    yPos = yPos-taille;
  } 

  if (choix == 5) {
    //xPos = xPos;
    //yPos = yPos;
  }
}

void calculate() {
   clear();
  choix = dice(6);
  fill(255);  
  text(choix, 20, 180);
}

void clear(){
   fill(0);
  rect(0, 0, 150, height); 
}



/*
 * Function for making a random choice
 * @param _choices > max value
 */
int dice(int _choices) {
  int result = (int)random(_choices);
  return result;
}

