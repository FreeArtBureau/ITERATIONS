/* 
 * Fonction pour dessiner une croix
 */

void maCroix(float _x, float _y, float _len) {
  pushMatrix();
  strokeWeight(_len);
  translate(_x, _y);
  line(-_len, -_len, _len, _len);
  line(-_len, _len, _len, -_len);
  popMatrix();
}

