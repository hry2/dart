import "dart:io";
import 'dart:math';
/* Un gardien de phare va aux toilettes cinq fois par jour. Or les WC sont au rez-de-chaussée…

Écrire une procédure (donc sans return) hauteurParcourue qui reçoit deux paramètres, le nombre de marches 
du phare et la hauteur de chaque marche (en cm), et qui affiche :

 Sélectionnez
Pour x marches de y cm, il parcourt z.zz m par semaine.
On n'oubliera pas :

qu'une semaine comporte 7 jours ;
qu'une fois en bas, le gardien doit remonter ;
que le résultat est à exprimer en m. */

void hauteurParcourue (int nombreDeMarches , double hauteurDeChaqueMarche){

double hauteurParcourueParSemaine;
hauteurParcourueParSemaine = nombreDeMarches*hauteurDeChaqueMarche*pow(10, -2)*2*5*7;

  print('Pour $nombreDeMarches marches de $hauteurDeChaqueMarche cm, il parcourt $hauteurParcourueParSemaine m par semaine.');
}

void main () {
 print('Entrer le nombre de marches.(Entier positif non nul)');
 int nombreDeMarchesEntres = int.parse(stdin.readLineSync()!);
 //on peut faire un try on format exption pour s'assurer de l'entrée
 print('Entrer la hauteur de chaque marche en cm.(hauteur > 0)');
 double hauteurDuneMarcheEnCm = double.parse(stdin.readLineSync()!);
 //on peut faire un try on format exption pour s'assurer de l'entrée
 hauteurParcourue(nombreDeMarchesEntres, hauteurDuneMarcheEnCm);
}
