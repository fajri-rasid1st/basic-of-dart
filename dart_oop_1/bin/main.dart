import 'package:dart_oop_1/bird.dart';

void main(List<String> args) {
  var myBird = Duck('donald', 4, 2.5, 'yellow');
  myBird.status();
  myBird.species = 'bebek sakti';
  myBird.swim();
  myBird.eat();
  myBird.poop();
  myBird.fly();
  myBird.walk();
  myBird.status();
}
