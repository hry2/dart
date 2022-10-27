/* Il s'agit d'écrire, d'une part, un programme principal et, d'autre part, une fonction utilisée dans le programme principal.

La fonction listAleaInt(n, a, b) retourne une liste de n entiers aléatoires dans [a .. b] en utilisant la fonction randint(a, b) du module random.

Dans le programme principal :

construire la liste en appelant la fonction listAleaInt() ;
calculer l'index de la case qui contient le minimum ;
échangez le premier élément du tableau avec son minimum. */
import 'dart:math';

import 'dart:io';

List listAllInt(int n, int a, int b) {
  List<int> listOfInt = [];
  int randomInt;
  for (int i = 0; i <= n; i++) {
    randomInt = Random().nextInt(b) + a;
    listOfInt.add(randomInt);
  }
  return listOfInt;
}

void main() {
  print(
      'Entrez respectivement deux nombres les entiers a et b formmant lintervalle [a,b] puis le nombre n dentiers aleatoires à trouver dans cet intervalle');
  int a = int.parse(stdin.readLineSync()!);
  int b = int.parse(stdin.readLineSync()!);
  int n = int.parse(stdin.readLineSync()!);
  print('Liste de n entiers dans lintervalle [a,b] : ${listAllInt(n, a, b)}');
}
