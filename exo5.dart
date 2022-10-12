import "dart:io";

//L'utilisateur donne un entier positif et le programme annonce combien de fois de suite cet entier est divisible par 2.

void main() {
  stdout.write("Entrer un nombre entier positif\n");
  String userEntry = stdin.readLineSync()!;
  int nbrDeFoisDivisibleParDeux = 0;
  try {
    int integerstocheck = int.parse(userEntry); //valeur de départ
    while (!(integerstocheck == 2)) {
      if (integerstocheck % 2 == 0 &&
          !(integerstocheck == 1) &&
          !(integerstocheck == 0)) {
        nbrDeFoisDivisibleParDeux++;
        integerstocheck = integerstocheck ~/ 2; //division entière
      } else
        break;
    }
    print('Ce nombre est divisble $nbrDeFoisDivisibleParDeux fois par 2');
  } on FormatException {
    print('Erreur veuillez recommencer. Vous devez entrer un entier positif');
  }
}
