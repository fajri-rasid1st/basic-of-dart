import 'package:dart_oop_1/animal.dart';
import 'package:dart_oop_1/mixinbehaviour.dart';
// Inheritance

class Fish extends Animal {
  final String _skinColor;

  Fish(String name, int age, double weight, this._skinColor)
      : super(name, age, weight);

  @override
  void status() {
    super.status();
    print('skin color    : $_skinColor');
  }
}

class Shark extends Fish with Swimmable {
  Shark(String name, int age, double weight, String skinColor)
      : super(name, age, weight, skinColor);
}

class FlyingFish extends Fish with Swimmable, Flyable {
  FlyingFish(String name, int age, double weight, String skinColor)
      : super(name, age, weight, skinColor);
}
