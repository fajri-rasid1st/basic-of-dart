import 'package:dart_oop_4/person.dart';

// Parameter underscore (_)

void main(List<String> arguments) {
  var person1 = Person('cick', doingHobby: (_) => 'person is swimming');
  var person2 = Person('itoa', doingHobby: (name) => '$name is swimming');

  person1.takeARest();
  person2.takeARest();
}
