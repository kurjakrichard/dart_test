import 'dog.dart';
import 'future_test.dart';
import 'gyujtemeny_test.dart';
import 'nullable_test.dart';

void main() {
  //Ez a rész a String interpolation tesztelésére való
  String egy = 'Eredmény:';
  int ketto = 5;
  var harom = 2; //Lehet a var-ral is változót létrehozni
  print(
      "$egy $ketto * $harom = ${szorzas(ketto, harom)}"); //String interpolation in Dart.

  //Ez a rész a nullable változók tesztelésére való
  print('\nEz a rész a nullable változók tesztelésére való.');
  var alap = nullableTest();
  alap.repeat();

  //Ez a rész a dog osztály tesztelésére való
  print('\nEz a rész a dog osztály tesztelésére való.');
  var husky = Dog(age: 5, breed: 'Husky', color: 'black', name: 'Cézár');
  var fixlist = List<String>.unmodifiable(['hhh']);
  //fixlist.add('jjj');  not working
  print(fixlist);

  print(husky.name);
  var boxer = Dog(age: 10, name: 'Cézár', breed: 'Boxer');
  print(boxer.breed);

  print('Async program kezdődik.');

  print('Async program befejeződik.');
}

int szorzas(int a, int b) {
  return a * b;
}
