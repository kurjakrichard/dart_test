abstract class Animal {
  int? age;
  String? name;
  String? breed;
  String? color;
  Animal();
  Animal.all({required this.age, this.name, this.breed = '', this.color = ''});

  void voice() {
    print("Grrr");
  }
}
