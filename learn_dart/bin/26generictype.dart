// Generic type

import 'package:learn_dart/datetimesecurebox.dart';
import 'package:learn_dart/intsecurebox.dart';
import 'package:learn_dart/securebox.dart';

void main(List<String> args) {
  var secureBox1 = IntSecureBox(1945, 'qwerty123');
  print(secureBox1.getData('qwerty123'));

  var secureBox2 = DateTimeSecureBox(DateTime.now(), 'qwerty123');
  print(secureBox2.getData('qwerty123'));

  // general datatype
  var secureBox3 = SecureBox<Person>(Person('John Doe'), 'qwerty123');
  print(secureBox3.getData('qwerty123').name);
}

class Person {
  final String _name;

  Person(this._name);

  String get name => _name;
}
