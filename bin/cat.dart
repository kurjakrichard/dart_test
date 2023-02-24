abstract class Cats {
  int? age;
  String? name;
  String? breed;
  String? color;
  Cats(
      {required this.age,
      required this.name,
      this.breed = '',
      this.color = ''});

  void voice() {
    print("Grrr");
  }
}

class Cat extends Cats implements Pet, Carnivores {
  String? owner;

  Cat({required this.owner, required int? age, required String? name})
      : super(age: age, name: name);

  @override
  void voice() {
    print('Miau');
  }

  @override
  void feed() {
    print('whiskas');
  }

  @override
  void hunt() {
    print('Mouse');
  }
}

class Pet {
  void feed() {
    print('meet');
  }
}

abstract class Carnivores {
  void hunt();
}
