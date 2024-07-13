import 'animal.dart';

class Dog extends Animal {
  Dog({required this.age, this.name, this.breed = '', this.color = ''});
  int? age;
  String? name;
  String? breed;
  String? color;
}
