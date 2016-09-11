/*
 * SON_VIZ_
 * Un système autonome qui dessine avec du son
 * Le niveau sonore détermine certains paramètres de l'image
 * Une idée pour ensuite créer des objets 'datas' (CNC...)
 *
 * MW_2016
 * https://github.com/FreeArtBureau/ITERATIONS
 * www.iterations.fabprojects.codes
 *
 * end
 
 */

////////////////////////// GLOBALS /////////////////////////// 
import ddf.minim.*;

Minim minim;//ON CREE UN NOUVEAU OBJET MINIM QUI S'APPELLE minim
AudioPlayer player;    
int x, y;
float scaling;

////////////////////////// SETUP ///////////////////////////
void setup() {
  size(640, 368);
  background(0);
  noStroke();

  minim = new Minim(this);
  //ON CREE AUSSI UN CANAL AUDIO IN
  player = minim.loadFile("Dark & Long.mp3", 512);
  player.play();
  frameRate(20);
}

////////////////////////// DRAW ///////////////////////////
void draw() {
  //RÉCUPÉRER LE NIVEAU SONORE
  scaling = player.mix.level();
  int trans = (int)map(scaling, 0.0, 0.1, 5, 180);
 println(scaling);
  //color trans = (int)random(255);
  fill(255, trans);  

  //DESSINER NOTRE FORME
  rect(x+30, y+30, scaling*10, -scaling*100);
  x+= 5;

  //VÉRIFIER SI ON ARRIVE AU BORD DU CANVAS.
  if (x>=width-60) {
    x=30;
    y+=10;
  }
  if (y>=height-30) {
    y=30;
  }
}

void stop() {
  // IL FAUT TOUJOURS STOPPER LES CLASSES MINIM
  player.close();
  minim.stop();  
  super.stop();
}
//////////////////////////////////////////////

