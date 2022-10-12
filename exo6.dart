import "dart:io";

/***
 * L'utilisateur donne un entier supérieur à 1 et le programme affiche, s'il y en a, tous ses diviseurs propres sans répétition ainsi que leur nombre. S'il n'y en a pas, il indique qu'il est premier.

EX :
Entrez un entier strictement positif : 12
Diviseurs propres sans répétition de 12 : 2 3 4 6 (soit 4 diviseurs propres)
Entrez un entier strictement positif : 13
Diviseurs propres sans répétition de 13 : aucun ! Il est premier

 */

void main() {
  print('Entrer un entier supérieur à 1');
  String userEntry = stdin.readLineSync()!;

  try {
    int userInteger = int.parse(userEntry);
    List<int> listOfDividers = [];
    if (userInteger > 1) {
      for (int i = 1; i <= userInteger; i++) {
        if (userInteger % i == 0) {
          listOfDividers.add(i);
        }
      }
      
      int numberOfDividers = listOfDividers.length;
      if (numberOfDividers == 2) {
        print('$userInteger est un nombre premier');
      } else {
        print(
            '$userInteger a $numberOfDividers diviseurs propres qui sont $listOfDividers');
      }
    } else
      print('Erreur. Veuillez entrer un entier supérieur à 1');
  } on FormatException {
    print('Erreur. Veuillez entrer un entier supérieur à 1');
  }
}
