import 'package:dart_oop_4/person.dart';

// Parameter underscore (_)

void main(List<String> arguments) {
  var person = Person('cick', doingHobby: (_) => 'person is swimming');
  person.takeARest();
}
