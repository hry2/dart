/* Fonction renvoyant plusieurs valeurs sous forme d'un tuple.

Écrire une fonction minMaxMoy() qui reçoit une liste d'entiers et qui renvoie le minimum, le maximum et la moyenne de cette liste.
Le programme principal appellera cette fonction avec la liste : [10, 18, 14, 20, 12, 16]. */


void minMaxMoy(List<int> listOfInteger){
int min = listOfInteger[0];
int max = listOfInteger[0];
int sum = 0 ;
;
for(int i=0;i<listOfInteger.length;i++){
  sum += listOfInteger[i];
  if(min > listOfInteger[i]) min=listOfInteger[i];
  if(max < listOfInteger[i]) max=listOfInteger[i];
}
print('Le minimum de cette liste est $min');
print('Le mximum de cette liste est $max');
print('La moyenne de cette liste est ${sum/listOfInteger.length}');
}


void main() {
List<int> thisList = [10, 18, 14, 20, 12, 16];
minMaxMoy(thisList);
}
