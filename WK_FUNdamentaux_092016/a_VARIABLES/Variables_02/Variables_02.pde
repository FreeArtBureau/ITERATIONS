/*
 * RND_Casting
 * La fonction random()
 * et la notion de 'casting'
 * convertir des types de données
 *
 * MW_2016
 * https://github.com/FreeArtBureau/ITERATIONS
 * www.iterations.fabprojects.codes
 *
 *
 * end
*/

/////////////////////////// GLOBALS ////////////////////////////
char lettre = ' ';
/////////////////////////// SETUP ////////////////////////////

void setup() {
  size(400, 470);
  background(33);
  smooth();
  noStroke();
  textSize(340);
  textAlign(CENTER);
  frameRate(12);
}

/////////////////////////// DRAW ////////////////////////////
void draw() {
  background(33);
  
  textSize(340);
  
  // Afficher nos lettres
  // Notez bien la conversion 
  lettre = char(int(random(30, 126))); // casting float > byte > char
  text(lettre,width/2, height/1.5);
  
  // Afficher nos numéros (type : nombres virgules)
  textSize(18);
  float num2 = random(5000);
  text("nombres virgules : ",100, height-60);
  text(num2, 226, height-20);
  
  
  // Afficher nos numéros (type : nombres entiers)
  // Notez bien la conversion 
  int num = int(random(5000)); // casting float > int
  text("nombres entiers : ",98, height-20);
  text(num, 210, height-60);
  
  
}

/////////////////////////// FUNCTIONS ////////////////////////////
