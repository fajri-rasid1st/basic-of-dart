// static keyword

class Person {
  final String _name;
  int _age;
  static final int _maxAge = 100;
  static int _numberOfPerson = 0;

  Person(this._name, int age) {
    _age = age > 100 ? 100 : age;
    _numberOfPerson++;
  }

  String get name => _name;
  int get age => _age;
  static int get maxAge => _maxAge;
  static int get numberOfPerson => _numberOfPerson;

  void status() {
    print('no.     : $numberOfPerson');
    print('name    : $name');
    print('age     : $age tahun');
  }
}
