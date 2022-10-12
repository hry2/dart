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
    if (currentSequence == sequence) {match++;}
    biginningOfCurrentSequence  ++;
    if (biginningOfCurrentSequence == chaine.length) {finDeLaChaine = true;}
    //return proportionDeLaSequenceDansLaChaine;
  }
  double proportionDeLaSequenceDansLaChaine = (match*sequence.length*100/chaine.length);
  return proportionDeLaSequenceDansLaChaine ;
}

void main() {
//récpérer la chaine et la séquence à comparer
}
