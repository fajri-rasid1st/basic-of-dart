// Singleton pattern

void main(List<String> args) {
  var user1 = User(id: 1, name: 'fajri');
  var user2 = User(id: 2, name: 'dandi');
  var user3 = User(id: 3, name: 'itoa');

  print(user2 == user3 ? 'same object' : 'difference object');
  print(user1.name);
  print(user2.name);
  print(user3.name);
}

class User {
  int id;
  String name;

  static final User _instance = User._internal();

  User._internal();

  factory User({int id, String name}) {
    _instance.id = id;
    _instance.name = name;

    return _instance;
  }
}
