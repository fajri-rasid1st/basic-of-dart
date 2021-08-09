// Async-await

void main(List<String> args) {
  var person = Person();

  print('job 1');
  print('job 2');

  // cara 1
  // person.getDataAsync().then((name) {
  //   print('job 3 : $name');
  // }).whenComplete(() {
  //   print('thank you!');
  // });

  // cara 2
  person.getDataAsync().then((_) {
    print('job 3 : ${person.name}');
  }).whenComplete(() {
    print('thank you!');
  });

  print('job 4');
  print('job 5');
}

class Person {
  String _name = 'none';

  String get name => _name;

  // cara 1
  // Future<String> getDataAsync() {
  //   return Future.delayed(Duration(seconds: 3), () {
  //     _name = 'John Doe';

  //     print('get data [success]');

  //     return _name;
  //   });
  // }

  // cara 2
  Future<void> getDataAsync() async {
    await Future.delayed(Duration(seconds: 3));

    _name = 'Fajri';

    print('get data [success]');
  }
}
