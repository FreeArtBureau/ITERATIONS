/*
 * Recursion Trees_02
 * Tree function by Robert Sedgewick & Kevin Wayne
 * link : http://introcs.cs.princeton.edu/java/23recursion/Tree.java.html
 * A more elegant version of the tree algorithm in my opinion 
 *
 * REF : http://introcs.cs.princeton.edu/java/23recursion/
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
  translate(width/2, height-30);  
  
  int num = (int)map(mouseX, 0, width*2, 1, 18);
  tree(num, 0, 0, radians(-90), 100);
}




