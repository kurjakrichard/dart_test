import 'dart:async';
import 'dart:io';

void main() async {
  print('Add meg a neved');
  String? name = stdin.readLineSync();
  ;
  print('Név: $name');
  print('Add meg a neved2');
  String? name2 = stdin.readLineSync();
  print('Név2: $name2');

  await for (var number in counter()) {
    print('Eltelt idő: $number másodperc');
  }
}

Stream<int> counter() async* {
  for (int i = 1; true; i++) {
    await Future.delayed(Duration(seconds: 1));
    yield i;
  }
}
