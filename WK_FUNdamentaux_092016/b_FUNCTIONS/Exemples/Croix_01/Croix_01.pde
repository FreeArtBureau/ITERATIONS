/*
 * FUNCTION_CROIX
 * Dessiner un croix
 *
 * Author & date
 * links / refs ...
 *
 *
 * end
 */

/////////////////////////// GLOBALS ////////////////////////////

/////////////////////////// SETUP ////////////////////////////

void setup() {
  size(400, 340);
  background(33);
  smooth();
  noStroke();
  rectMode(CENTER);
  
  croix(50, 75, 75, 2, color(255,0,0));
  croix(200, 100, 130, 10, color(255,0,255));
  croix(300, 200, 250, 5, color(255,255,0));
  croix(100, 250, 150, 20, color(255,200,0));
}

/////////////////////////// DRAW ////////////////////////////
void draw() {
}

/////////////////////////// FUNCTIONS ////////////////////////////
void croix(float _x, float _y, float _len, float _fact, color _c) {
  fill(_c);
  rect(_x, _y, _len, _len/_fact);
  rect(_x, _y, _len/_fact, _len);
}

