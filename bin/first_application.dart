import 'nullable_test.dart';

void main() {
  //Ez a rész a nullable változók tesztelésére való
  var alap = nullableTest();
  alap.repeat();
  print('hello');

  //Ez a rész a gyűjtemények tesztelésére való
  var lista = gyujtemenyTest();
  lista.repeat();
}

class gyujtemenyTest {
  var hello = ['szia', 'szevasz'];
  var hel = print('helloka');

  void repeat() {
    print(hello.runtimeType);
    print(hello);
  }
}
