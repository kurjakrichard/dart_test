import 'gyujtemeny_test.dart';
import 'nullable_test.dart';

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
}
