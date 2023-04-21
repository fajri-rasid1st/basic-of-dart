// OOP Dart

// Abstract class
abstract class Animal {
  // private attribute with (_) - encapsulation
  final String _name;
  final int _age;
  String species;
  double _weight;

  // Constructor
  Animal(this._name, this._age, this._weight);

  // getter - encapsulation
  String get name => _name;
  int get age => _age;
  double get weight => _weight;

  // method / behaviour
  void eat() {
    print('$_name is eating');
    _weight += 0.5;
  }

  void poop() {
    print('$_name is pooping');
    _weight -= 0.25;
  }

  void status() {
    print('name: $name');
    print('age: $age years old');
    print('species: ${species ?? "tidak ada"}');
    print('weight: ${weight.toStringAsFixed(2)} pound');
  }
}
