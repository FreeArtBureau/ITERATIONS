void keyPressed() {
  SEED = (int)random(10000);
  randomSeed(SEED);

  if (keyCode != SHIFT && keyCode != CONTROL && keyCode != ALT && keyCode != ENTER) {
    KEYS=key;
    XPOS+=LETTER_SIZE+KERN;
  }
  if (keyCode == ENTER) {
    XPOS = LETTER_SIZE*2;
    YPOS+= LETTER_SIZE+KERN;
  }

  // soit on fait appel à notre fonction qui génère à chaque frappe
  // une forme différente...
  drawRandomForm(XPOS, YPOS, LETTER_SIZE);

  // ... soit on fait appel à une autre fonction qui contient d'autres fonctions
  // pour dessiner des formes à chaque fois les mêmes.

  //keysInteraction();
  /*
  float r = random(12);
   println(r);
   if(r<0.87){
   XPOS = LETTER_SIZE*2;
   YPOS+= LETTER_SIZE+KERN; 
   }
   */
}

void keysInteraction() {
  switch(KEYS) {
  case 'a':
    drawLetterA(XPOS, YPOS, LETTER_SIZE);
    break;
  case 'b':
    drawLetterB(XPOS, YPOS, LETTER_SIZE);
    break;
  case 'c':
    // à vous de continuer...
    drawLetterC();
    break;

  case 'd':
    drawLetterD();
    break;
  }
}

/////////////// RANDOM FORM
void drawRandomForm(float _x, float _y, float _letterSize) {

  for (int j=0; j<_letterSize; j+=_letterSize/4) {
    int t = 255;
    for (int k=0; k<_letterSize+5; k+=_letterSize/4) {

      pushMatrix();
      translate(_x, _y);
      float r = random(_letterSize);
      if (r<_letterSize/2) {
        fill(255, t);
        ellipse(j, k, _letterSize/4, _letterSize/4);
      } else {
      }
      popMatrix();
      t -= (int)map(k,0,_letterSize, 1, 100);
    }
  }
}


////////////// LETTER FORMES
void drawLetterA(float _x, float _y, float _letterSize) {

  translate(_x, _y);
  rect(0, -_letterSize, _letterSize, _letterSize/10);
  rect(-_letterSize, 0, _letterSize, _letterSize/10);
}

// à continuer...
void drawLetterB(float _x, float _y, float _letterSize) {
}


void drawLetterC() {
}

void drawLetterD() {
}

