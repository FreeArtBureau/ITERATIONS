/*
 * SpaceFIlling Trees_01
 * https://en.wikipedia.org/wiki/Space-filling_tree
 *
 * More can be read about fractals in general here : 
 * >>> http://www.fractalcurves.com/
 */

////////////////////////// GLOBALS ///////////////////////////


////////////////////////// SETUP ///////////////////////////
void setup() {
  size(500, 500);
  smooth();
  background(33);
}

////////////////////////// DRAW ///////////////////////////

void draw() {
  randomSeed(1000);
  background(33);
  //translate(width/2, height-30);  
  
  int num = (int)map(mouseX, 0, width*2, 1, 18);
  tree(num, width/2, height/2, radians(-90), 100);
}




