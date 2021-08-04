// static keyword

class Person {
  String _name;
  int _age;
  static final int _maxAge = 100;
  static int _numberOfPerson = 0;

  Person(String name, int age) {
    _name = name;
    _age = age > _maxAge ? _maxAge : age;
    _numberOfPerson++;
  }

  String get name => _name;
  int get age => _age;
  int get numberOfPerson => _numberOfPerson;

  void status() {
    print('no.     : $numberOfPerson');
    print('name    : $name');
    print('age     : $age tahun');
  }
}
