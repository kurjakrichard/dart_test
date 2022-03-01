import 'future_test.dart';
import 'gyujtemeny_test.dart';
//import 'nullable_test.dart';

void main() {
  /**Ez a rész a nullable változók tesztelésére való
  //var alap = nullableTest();
  //alap.repeat();
  //print('hello');**/
  var egy = 'Szöveg';
  var ketto = egy;
  var harom = ketto;

  print(harom);

  //Ez a rész a gyűjtemények tesztelésére való
  var lista = gyujtemenyTest();
  lista.repeat();

  myStringAsyncFunction(); //Ez nem működik.

  //Ez a rész a Future osztály tesztelésére való
  var futureResult = myLongRunningFunction();
  futureResult.then((result) => print("Függvény eredménye : $result"));

  print('object');
}

//Ez a rész az Aszinkron programozás tesztelésére való
Future<String> myStringAsyncFunction() async {
  await Future.delayed(Duration(seconds: 4));
  return 'Hello az Asyncből';
}
