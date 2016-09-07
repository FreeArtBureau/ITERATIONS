/*
 * Dessin_Son
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
// Une bibliothèque dédiée au son (type plugin)
import ddf.minim.*;

Minim minim;
AudioPlayer player;    
int x, y;

// notre variable pour stocker le niveau sonore
float scaling;

////////////////////////// SETUP ///////////////////////////
void setup() {
  size(640, 368);
  background(0);
  noStroke();

  minim = new Minim(this);
  // le fichier son se trouve dans le dossier 'data' à la racine du sketch
  // ce fichier son est libre de droit ;–)
  player = minim.loadFile("Northern_Revival_000.mp3", 512);
  player.play();
  frameRate(22);
  x=0;
  y= 15;
}

////////////////////////// DRAW ///////////////////////////
void draw() {
  
  //récupérer le niveau sonore
  scaling = player.mix.level();
  println("Voici les valeurs brutes : "+scaling);

  //normaliser ces valeurs = valeurs entre 0 > 1
  float norm = map(scaling, 0.0, 0.3, 0.0, 1.0);
  println("Voici les valeurs normalisées : "+norm);

  // on se sert de cette nouvelle valeur stocker dans notre variable
  // 'norm' pour ensuite modifer la transparence et la forme du carré
  fill(255, norm*255);  
  rect(x, y, norm*8, -norm*30);


  x+= 5; // mise-à-jour de notre variable x

  //Check
  if (x>=width) {
    x=0;
    y+=20;
  }
  if (y>=height) {
    // sauvegarder une image à chaque passage
    saveFrame("export_capture_###.png");
    // background(0); // effacer le dessin et recommencer ?
    y=15;
  }
}

////////////////////////////////////////////// FUNCTION
void stop() {
  player.close();
  minim.stop();  
  super.stop();
}

///// PETITE NOTE : VARIABLES
/*
Les variables que nous avons vues sont des variables qui changent 
 en fonction d'une mise-à-jour dans notre code. 
 
 Par exemple, x = x + 1;
 Ceci modifie la valeur d 'x'
 
 Par contre, les variables font partie des données
 et ces données peuvent être bien d'autres choses qu'une valeur crée dans le programme.
 Dans cet exemple, on démontre qu'une donnée de l'extérieure peut être utilisée pour
 modifier un élément graphique dans notre programme. Il s'agit du niveau sonore d'un 
 fichier son. Cette donnée, on le stocke dans notre variable, 'scaling'
 
 */
