/**
 * Recursion
 * Original Code : D.Shiffman
 * Book : Nature of Code
 * Eg.8.3 (Chapter 8)
 *
 */


////////////////////////// GLOBALS ///////////////////////////

void setup() {
  size(400, 400);
}

////////////////////////// SETUP ///////////////////////////

void draw() {
  background(33);
  stroke(255);
  noFill();
  float rad = map(mouseX, 0, width, 1, 300);
  float angle = map(mouseY, 0, height, 1, 360);

  pushMatrix();
  translate(width/2, height/2);
  rotate(radians(angle));
  drawCircle(0, 0, rad);
  popMatrix();
 
}

////////////////////////// FUNCTIONS ////////////////////

void drawCircle(float x, float y, float radius) {
  strokeWeight(0.7);
  ellipse(x, y, radius/2, radius/2);
  if (radius > 10.5) {
  
    radius *= 0.85f;
    //println(radius);
    drawCircle(x+radius/2, y, radius/2);
    drawCircle(x-radius/2, y, radius/2);
    drawCircle(x, y+radius/2, radius/2);
    drawCircle(x, y-radius/2, radius/2);
  }
}

