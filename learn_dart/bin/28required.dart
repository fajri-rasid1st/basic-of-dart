// Required

import 'package:meta/meta.dart';

void main(List<String> args) {
  var person = Person(name: null, age: 24);

  print(person.status());
}

class Person {
  final name;
  final age;

  Person({@required this.name, this.age = 0}) {
    try {
      assert(name != null, "Don't use null for person name!");
    } catch (e) {
      print(e.message);
    }
  }

  String status() {
    return 'name : $name\nage : $age years old';
  }
}
