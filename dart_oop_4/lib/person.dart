// Parameter underscore (_)

class Person {
  final String _name;
  String Function(String name) doingHobby;

  Person(this._name, {this.doingHobby});

  String get name => _name;

  void takeARest() => doingHobby == null ? print('-') : print(doingHobby(name));
}
