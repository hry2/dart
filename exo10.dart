
/* Je suis ligoté sur les rails en gare d'Arras. Écrire un programme qui affiche un tableau me permettant de connaître
 l'heure à laquelle je serai déchiqueté par le train parti de la gare du Nord à 9 h (il y a 170 km entre la gare du Nord et Arras).

 (100 ,110 ...290, 300) km --> 1h
                    170 km --> ?

Le tableau prédira les différentes heures possibles pour toutes les vitesses de 100 km/h à 300 km/h, par pas de 10 km/h,
les résultats étant arrondis à la minute inférieure.

Écrire une procédure tchacatchac qui reçoit la vitesse du train et qui affiche l'heure du drame ;
Écrire le programme principal qui affiche le tableau demandé. */


void tchacatchac (int vitesse) {

  double heureDuDrameDecimal = 170/vitesse ;
  int heureDuDrame =heureDuDrameDecimal.truncate() ;
  int minDuDrame = ((heureDuDrameDecimal - heureDuDrame)*60).floor(); // a checker avec Regis
  
  print('|     $vitesse          |     $heureDuDrame h $minDuDrame  min      |'); 
}
void main () {
   print('|  Vitesse (km/h)  |  Heure du drame      |');
for (int i = 100 ; i<=300 ; i+=10){
   print('-------------------------------------------');
  tchacatchac(i);
}

}