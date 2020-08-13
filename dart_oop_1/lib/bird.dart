import 'package:dart_oop_1/animal.dart';
import 'package:dart_oop_1/mixinbehaviour.dart';
// Inheritance

class Bird extends Animal {
  final String _featherColor;

  Bird(String name, int age, double weight, this._featherColor)
      : super(name, age, weight);

  @override
  void status() {
    super.status();
    print('feathercolor  : $_featherColor');
  }
}

class Dove extends Bird with Walkable, Flyable {
  Dove(String name, int age, double weight, String featherColor)
      : super(name, age, weight, featherColor);
}

class Duck extends Bird with Walkable, Swimmable, Flyable {
  Duck(String name, int age, double weight, String featherColor)
      : super(name, age, weight, featherColor);
}
