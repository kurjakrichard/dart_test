import 'dart:async';
import 'dart:io';
import 'cat.dart';
import 'dog.dart';
import 'future_test.dart';
import 'collections_test.dart';
import 'generator_function_test.dart';
import 'nullable_test.dart';
import 'dynamic_test.dart';
import 'enum_test.dart';

void main() async {
  print('Add meg a neved');
  String? name = stdin.readLineSync() ?? '';
  stdout.write(name);
  stdout.close;
  print('Név: $name');
  print('Add meg a neved2');
  String? name2 = stdin.readLineSync() ?? '';
  stdout.write(name2);
  print('Név2: $name2');

  await for (var number in counter()) {
    print('Eltelt idő: $number másodperc');
  }
  //Ez a rész a függvények mint paraméterek tesztelésére való
  executeOnFirst([0,1], print);

  //Ez a rész az enumok tesztelésére való
  var project = {1: Status.notStarted.name};
  var project2 = {1: Status2.notStarted.value};
  var project3 = {1: Status2.notStarted.toString()};
  var value2 = Status2.notStarted.value2;

  print('\nEz a rész az enumok tesztelésére való');
  print(project);
  print(project2);
  print(project3);
  print(value2);

  //Ez a rész a String interpolation tesztelésére való
  print('\nEz a rész a String interpolation tesztelésére való.');
  String egy = 'Eredmény:';
  int ketto = 5;
  var harom = 2; //Lehet a var-ral is változót létrehozni
  print(
      "$egy $ketto * $harom = ${szorzas(ketto, harom)}"); //String interpolation in Dart.

  //Ez a rész a nullable változók tesztelésére való
  print('\nEz a rész a nullable változók tesztelésére való.');
  var nullable_test = nullableTest();
  nullable_test.repeat();

  //Ez a rész a dynamic változók tesztelésére való
  print('\nEz a rész a dynamic változók tesztelésére való.');
  var dynamic_test = DynamicTest();
  dynamic_test.dynamicTest();

  //Ez a rész a gyűjtemények kezelésének tesztelésére való
  print('\nEz a rész a gyűjtemények kezelésének tesztelésére való.');
  var collections_test = CollectionsTest();
  collections_test.repeat();
  List<String> maptolist = collections_test.maptolist();
  print(maptolist);

  //Ez a rész a dog osztály tesztelésére való
  print('\nEz a rész a dog osztály tesztelésére való.');
  var husky = Dog(age: 5, breed: 'Husky', color: 'black', name: 'Cézár');
  var fixlist = List<String>.unmodifiable(['hhh']);
  //fixlist.add('jjj');  not working
  print(fixlist);

  print(husky.name);
  var boxer = Dog(age: 10, name: 'Cézár', breed: 'Boxer');
  print(boxer.breed);
  boxer.voice();
  // ignore: unused_local_variable
  var cica = Cat(owner: 'Ricsi', age: 2, name: 'Cicus');

  print('Async program kezdődik.');
  FutureTest futureTest = FutureTest();
  futureTest.printFileContent();
  futureTest.printFileContent2();

  print('Async program befejeződik.');

  for (var number in myGeneratorFunction()) {
    print("Kapott érték: $number");
  }

  // await for (var number in myAsyncGeneratorFunction()) {
//    print('Eltelt idő: $number másodperc');
  // }
  print(sortingAuthor('Ez egy hosszú név Brandon Sanderson'));
}

String sortingAuthor(String author) {
  List<String> authorSplit = author.split(' ');
  String authorSort = authorSplit[authorSplit.length - 1];

  String authorLast = '';
  if (authorSplit.length > 1) {
    authorSplit.removeLast();
    for (var item in authorSplit) {
      authorLast = '$authorLast, $item';
    }
  }

  authorLast = authorLast.replaceAll(",", "");

  return '$authorSort,$authorLast';
}

Stream<int> counter() async* {
  for (int i = 1; true; i++) {
    await Future.delayed(Duration(seconds: 1));
    yield i;
  }
}

int szorzas(int a, int b) {
  return a * b;
}

void executeOnFirst<T>(List<T> list, void Function(T) block) {
  block(list[0]);
}
