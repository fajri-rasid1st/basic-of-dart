import 'package:dart_oop_1/mammal.dart';

void main(List<String> args) {
  var mammal = Bat('Batman', 2, 23, 'black');
  mammal.status();
  mammal.species = 'Kelelawar ashiap';
  mammal.eat();
  mammal.poop();
  mammal.fly();
  mammal.walk();
  mammal.status();
}
