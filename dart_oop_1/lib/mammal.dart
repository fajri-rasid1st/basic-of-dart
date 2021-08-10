import 'package:dart_oop_1/animal.dart';
import 'package:dart_oop_1/mixinbehaviour.dart';
// Inheritance

class Mammal extends Animal {
  final String _furColor;

  Mammal(String name, int age, double weight, this._furColor)
      : super(name, age, weight);

  @override
  void status() {
    super.status();
    print('fur color: $_furColor');
  }
}

class Dolphin extends Mammal with Swimmable {
  Dolphin(String name, int age, double weight, String furColor)
      : super(name, age, weight, furColor);
}

class Bat extends Mammal with Walkable, Flyable {
  Bat(String name, int age, double weight, String furColor)
      : super(name, age, weight, furColor);
}

class Cat extends Mammal with Walkable {
  Cat(String name, int age, double weight, String furColor)
      : super(name, age, weight, furColor);
}
