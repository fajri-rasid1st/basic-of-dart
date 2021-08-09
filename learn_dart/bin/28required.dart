// Required

import 'package:meta/meta.dart';

void main(List<String> args) {
  var person = Person(role: null, age: 20);

  print(person.status);
}

class Person {
  final String role;
  final int age;

  Person({@required this.role, this.age = 0}) {
    try {
      assert(role != null, "Don't use null for person role!");
    } catch (e) {
      print(e.message);
    }
  }

  String get status => 'role : $role\nage : $age years old';
}
