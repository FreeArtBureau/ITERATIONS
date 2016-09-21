/*
 * RANDOM_CHOICE_01
 * description
 *
 * MW_2016
 * https://github.com/FreeArtBureau/ITERATIONS
 * www.iterations.fabprojects.codes
 *
 *
 * end
*/

/////////////////////////// GLOBALS ////////////////////////////

/////////////////////////// SETUP ////////////////////////////

void setup() {
  size(300, 220);
  background(0);
  smooth();
  noStroke();
  textSize(173);
  int choix = dice(6);
  
  text(choix, 20, 190);
}

/////////////////////////// DRAW ////////////////////////////
void draw() {

}

/////////////////////////// FUNCTIONS ////////////////////////////

/*
 * Function for making a random choice
 * @param _choices > max value
 */
int dice(int _choices){
 int result = (int)random(_choices);
 return result;
  
}
