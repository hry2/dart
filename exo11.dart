/* Un programme principal saisit une chaîne d'ADN valide et une séquence d'ADN valide (valide signifie qu'elles ne sont pas vides
 et sont formées exclusivement d'une combinaison arbitraire de "a", "t", "g" ou "c").

Écrire une fonction valide qui renvoie vrai si la saisie est valide, faux sinon.

Écrire une fonction saisie qui effectue une saisie valide et renvoie la valeur saisie sous forme d'une chaîne de caractères.

Écrire une fonction proportion qui reçoit deux arguments, la chaîne et la séquence et qui retourne la proportion de séquence 
dans la chaîne (c'est-à-dire son nombre d'occurrences).

Le programme principal appelle la fonction saisie pour la chaîne et pour la séquence et affiche le résultat.

Exemple d'affichage :

 Sélectionnez
chaîne : attgcaatggtggtacatg
séquence : ca
Il y a 10.53 % de "ca" dans votre chaîne. */

import 'dart:io';

bool valide(String sequenceEntre) {
  if (sequenceEntre.toLowerCase().contains('a') ||
      sequenceEntre.toLowerCase().contains('t') ||
      sequenceEntre.toLowerCase().contains('g') ||
      sequenceEntre.toLowerCase().contains('c')) {
    return true;
  } else
    return false;
}

double saisie(String chaine, String sequence) {
  //double proportionDeLaSequenceDansLaChaine ;
  String currentSequence = '';
  // ignore: unused_local_variable
  bool finDeLaChaine = false;
  int biginningOfCurrentSequence = 0;
  int match = 0;
  while (finDeLaChaine = false) {
    for (int i = biginningOfCurrentSequence; i <= sequence.length; i++) {
      currentSequence += chaine[i];
    }
    if (currentSequence == sequence) {
      match++;
    }
    biginningOfCurrentSequence++;
    if (biginningOfCurrentSequence == chaine.length) {
      finDeLaChaine = true;
    }
    //return proportionDeLaSequenceDansLaChaine;
  }
  double proportionDeLaSequenceDansLaChaine =
      (match * sequence.length * 100 / chaine.length);
  return proportionDeLaSequenceDansLaChaine;
}

void main() {
//récpérer la chaine et la séquence à comparer
  // ignore: unused_local_variable
  bool endOfChannel = false;
  // ignore: unused_local_variable
  bool endOfSequence = false;
  String channel = '';
  String sequence = '';
  String userEntry = '';
  print(
      'Entrer successivement les lettres qui constitueront la chaine (uniquement a,t,g ou c). Entrer O ou o pour terminer');
  while (endOfChannel == false) {
    userEntry = stdin.readLineSync()!;
    
    if (userEntry.toLowerCase() == 'o') {
      endOfChannel = true;
    } else if (valide(userEntry) == true) {
      channel += userEntry;
    } else
      print('Entrée invalide. Elle ne sera pas prise en compte');
  }

  userEntry = '';
  print(
      'Entrer successivement les lettres qui constitueront la sequence(uniquement a,t,g ou c). Entrer O ou o pour terminer');
  while (endOfSequence == false) {
    userEntry = stdin.readLineSync()!;
    if (userEntry.toLowerCase() == 'o') {
      endOfSequence = true;
    } else if (valide(userEntry)) {
      sequence += userEntry;
    } else
      print('Entrée invalide. Elle ne sera pas prise en compte');
  }

  //appel de la fonction saisie sur les entrées
  print ('Il y a ${saisie(channel, sequence)} % de $sequence dans votre chaine');
}
