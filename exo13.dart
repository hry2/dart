/* 14-2-13. Numéro 13▲
Comme précédemment, il s'agit d'écrire, d'une part, un programme principal et, d'autre part, une fonction utilisée dans le 
programme principal.

La fonction listAleaFloat(n) retourne une liste de n flottants aléatoires en utilisant la fonction random() du module random.

Dans le programme principal :

saisir un entier n dans l'intervalle : [2 .. 100] ;
construire la liste en appelant la fonction listAleaFloat() ;
afficher l'amplitude du tableau (écart entre sa plus grande et sa plus petite valeur) ;
afficher la moyenne du tableau. */

import 'dart:io';
import 'dart:math';

List<double> listAleaFloat(int n) {
  List<double> listOfRandomFloats = [];
  double randomFloat;
  for (int i = 0; i <= n; i++) {
    randomFloat = Random().nextDouble();
    listOfRandomFloats.add(randomFloat);
  }
  return listOfRandomFloats;
}

void main() {
  double sum = 0;
  double maxDouble;
  double minDouble;
  print('Entrer un nombre entre 2 et 100');
  int intergerEntered = int.parse(stdin.readLineSync()!);
  List<double> randomFloats = listAleaFloat(intergerEntered);
  minDouble = randomFloats[0];
  maxDouble = randomFloats[0];
  for (int i = 0; i <= randomFloats.length; i++) {
    sum += randomFloats[i];
    if (minDouble >= randomFloats[i]) minDouble = randomFloats[i];
    if (maxDouble <= randomFloats[i]) maxDouble = randomFloats[i];
  }
  print(
      'La moyenne de cette liste est ${sum / randomFloats.length}. Son amplitude est ${maxDouble - minDouble}');
}
