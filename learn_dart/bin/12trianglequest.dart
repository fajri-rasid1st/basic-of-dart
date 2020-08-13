// Triangle Quest

import 'dart:io';

void main(List<String> args) {
  var length = stdin.readLineSync();
  for (var i = 0; i < int.parse(length); i++) {
    print(('*' * (i + 1)).padLeft((int.parse(length))));
  }
}
