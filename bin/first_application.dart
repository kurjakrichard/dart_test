import 'dog.dart';
import 'future_test.dart';
import 'gyujtemeny_test.dart';
//import 'nullable_test.dart';

void main() {
  /*Ez a rész a nullable változók tesztelésére való
  var alap = nullableTest();
  alap.repeat();
  print('hello');*/

  var husky = Dog(age: 5, breed: 'Husky', color: 'black', name: 'Cézár');
  var fixlist = List<String>.unmodifiable(['hhh']);
  fixlist.add('jjj');
  print(fixlist);

  print(husky.name);
  var boxer = Dog(age: 10, name: "Cézár");

  String egy = 'Eredmény:';
  int ketto = 5;
  var harom = 2; //Lehet a var-ral is változót létrehozni

  print(
      "$egy $ketto * $harom = ${szorzas(ketto, harom)}"); //String interpolation in Dart.

  myStringAsyncFunction(); //Ez nem működik.

  //Ez a rész a Future osztály tesztelésére való
  var futureResult = myLongRunningFunction();
  futureResult.then((result) => print("Függvény eredménye : $result"));
}

int szorzas(int a, int b) {
  return a * b;
}

//Ez a rész az Aszinkron programozás tesztelésére való
Future<String> myStringAsyncFunction() async {
  await Future.delayed(Duration(seconds: 4));
  var lista = await gyujtemenyTest();
  lista.repeat();
  return 'Hello az Asyncből';
}
