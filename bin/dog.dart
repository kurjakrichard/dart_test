import 'animal.dart';

class Dog extends Animal {
  int? age;
  String? name;
  String? breed;
  String? color;

  Dog({required this.age, this.name, this.breed = '', this.color = ''});
}
