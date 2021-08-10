import 'package:dart_oop_1/fish.dart';

void main(List<String> args) {
  var flyingFish = FlyingFish('Flying fish', 100, 84.12, 'black');

  flyingFish.status();
  flyingFish.species = 'Indosiar fish';
  flyingFish.eat();
  flyingFish.poop();
  flyingFish.swim();
  flyingFish.fly();
  flyingFish.status();
}
