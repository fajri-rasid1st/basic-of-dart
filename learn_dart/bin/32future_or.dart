// FutureOr

import 'dart:async';

void main(List<String> args) async {
  var user = User();
  var userManager = UserManager(FirebaseStorage());

  print(await userManager.getUserName(user));
}

class User {
  String name = 'no name';
}

class UserManager {
  final IDataStorage _dataStorage;

  UserManager(this._dataStorage);

  FutureOr<String> getUserName(User user) async {
    return await _dataStorage.getUserName(user);
  }
}

abstract class IDataStorage {
  FutureOr<String> getUserName(User user);
}

class FirebaseStorage implements IDataStorage {
  @override
  FutureOr<String> getUserName(User user) {
    return Future.delayed(Duration(seconds: 3), () {
      return 'John Doe';
    });
  }
}

class LocalStorage implements IDataStorage {
  @override
  String getUserName(User user) {
    return 'Pascal Siakam';
  }
}
