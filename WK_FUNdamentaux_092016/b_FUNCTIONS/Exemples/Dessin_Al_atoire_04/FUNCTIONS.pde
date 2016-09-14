
/*
 * @param _x > position sur l'axe x
 * @param _y > position sur l'axe y
 * @param _len > longeur/taille de ma croix
 */
void croix(float _cntX, float _cntY, float _len, float _fact, color _c, float _angle) {
  pushMatrix();
  translate(_cntX, _cntY);
  rotate(radians(_angle));
  fill(_c);
  rect(0, 0, _len, _len/_fact);
  rect(0, 0, _len/_fact, _len);
  popMatrix();
}

void motionAlgo(float _scaling) {
  //Algorithme d'animation simple (aléatoire)
  angle += random(-0.33, 0.34);
  xPos+= sin(angle) * _scaling;
  yPos+= cos(angle) * _scaling;
  
  //Une strucure de contrôle pour tester si notre forme se déplace en dehors 
  // des limites de notre fenêtre et ensuite faire qqch en fonction
  if (xPos>width)xPos=0;
  if (xPos<0)xPos=width;
  if (yPos>height)yPos=0;
  if (yPos<0)yPos=height;
}

float oscillate(float _freq, float _amp, String _type) {
  float val=0;
  if (_type.equals("SIN")) {
    val = sin(frameCount*_freq)*_amp;
  }
  if (_type.equals("COS")) {
    val = cos(frameCount*_freq)*_amp;
  }
  return val;
}
