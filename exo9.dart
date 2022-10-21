import "dart:io";
/* Un permis de chasse à points remplace désormais le permis de chasse traditionnel. 
Chaque chasseur possède au départ un capital de 100 points. 
S'il tue une poule, il perd 1 point, 3 points pour un chien, 5 points pour une vache et 10 points pour un ami. 
Le permis coûte 200 euros.
Écrire une fonction amende qui reçoit le nombre de victimes du chasseur et qui renvoie la somme due.
Utilisez cette fonction dans un programme principal qui saisit le nombre de victimes et qui affiche la somme que le chasseur doit 
débourser.
 
 */

double amende (int nombreDePoulesTuees, int nombreDeChienTues, int nombreDeVachesTuees, int nombreDamisTues) {

int totalDesPointsPerdus = nombreDePoulesTuees + nombreDeChienTues*3 + nombreDeVachesTuees*5 + nombreDamisTues*10;
/*    
100  pts       -->  200 euros
totalDesPointsPerdus --> ? 

Le permis a 100 points et coute 200€. Ainsi s'il a dépensé 120 points il aura besoin de 2 permis et donc dépensera 400€
Le calcul fait ici suppose qu'on a un permis avec un nombre de flexible
*/
double sommeDue= totalDesPointsPerdus*200/100 ;
  return sommeDue ;
}
void main () {
print('Entrer successivement : le nombre de Poules, de chiens, de vaches et damis tués');
int poulesTuees = int.parse(stdin.readLineSync()!);
int chiensTues = int.parse(stdin.readLineSync()!);
int vachesTuees = int.parse(stdin.readLineSync()!);
int amisTues = int.parse(stdin.readLineSync()!);
print('Vous avez ${poulesTuees+chiensTues+vachesTuees+amisTues} victimes. Vous devez donc débourser ${amende(poulesTuees, chiensTues, vachesTuees, amisTues)} euros');

}
