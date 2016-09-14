/*
 * Recursion Trees_01
 * Original Code : D.Shiffman
 * Book : Nature of Code
 * Eg.8.3 (Chapter 8)
 *
 */

////////////////////////// GLOBALS ///////////////////////////


////////////////////////// SETUP ///////////////////////////
void setup() {
  size(400, 400);
  smooth();
  background(33);
}

////////////////////////// DRAW ///////////////////////////

void draw() {
  randomSeed(1000);
  background(33);
  translate(width/2, height);
  float a = map(mouseX, 0, width*2, 1, 360);
  tree(100, a);
}



////////////////////////// FUNCTIONS ////////////////////
// Notre fonction avec les paramètres
// @param : _len > la longeur initiale de la branche
// @parame : _angle > l'angle de rotation de la branche (l'orientation droite/gauche)
void tree(float _len, float _angle) {
  float a = _angle;  
  stroke(237);
  
  line(0, 0, 0, -_len);
  // on bouge notre origine par la variable _len
  translate(0, -_len);

  if (_len >= 2) {    
    _len*=0.65;
    // on dessine la première branche de notre arbre à droite
    pushMatrix();
    rotate(radians(a));
    tree(_len, _angle); // divide by a factor to add some variation
    popMatrix();
    
     // ensuite notre branche à gauche
    pushMatrix();
    rotate(radians(-a));
    tree(_len, _angle);
    popMatrix();
  }
}

