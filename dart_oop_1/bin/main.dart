import 'package:dart_oop_1/fish.dart';

void main(List<String> args) {
  var flyingFish = FlyingFish('Flying fish', 100, 84.12, 'black')
    ..species = 'Indosiar fish'
    ..eat()
    ..poop()
    ..swim()
    ..fly();

  flyingFish.status();
}
