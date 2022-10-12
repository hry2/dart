import "dart:io";

/* Écrire un programme qui approxime par défaut la valeur de la constante mathématique e, pour n assez grand(56), en utilisant la formule :

e≈∑i=0 à n (1/i!)
Pour cela, définissez la fonction factorielle et, dans votre programme principal, saisissez l'ordre n et affichez l'approximation correspondante de e. */

//définition de la fonction factorielle
int factorielle(int n) {
  int factorielle = 1 ;
  if (n == 0)
    return factorielle;
  else {
    for (int i = 1; i <= n; i++) {
      factorielle *= i;
    }
    return factorielle;
  }
}

void main() {
  print('Saisissez un ordre n (nombre entier positif )');
  String userEntry = stdin.readLineSync()!;

  try {
    int ordre = int.parse(userEntry);
    print(factorielle(ordre));
    double factorielleDivision;
    double somme = 0;
    for (int i = 0; i <= ordre; i++) {
      factorielleDivision = 1 / factorielle(i);
      somme += double.parse(factorielleDivision.toStringAsFixed(4));
    }
    print('La valeur approximative de e est ${somme}');
  } on FormatException {
    print('Entrée invalide. Veuillez recommencer');
  }
}
