import 'package:dart_oop_1/animal.dart';
// mixin

mixin Flyable on Animal {
  void fly() => print('$name is flying');
}

mixin Swimmable on Animal {
  void swim() => print('$name is swimming');
}

mixin Walkable on Animal {
  void walk() => print('$name is walking');
}
