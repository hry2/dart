import "dart:io";

void main(){
stdout.write("Entrer un nombre entier\n");
String userEntry = stdin.readLineSync()!;
int? integertocheck = int.tryParse(userEntry);
if(integertocheck!% 2 ==0)
{
  print('$integertocheck est pair');
} else print('$integertocheck est immpair');

}
