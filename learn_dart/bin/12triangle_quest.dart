// Triangle Quest

import 'dart:io';

void main(List<String> args) {
  var length = int.tryParse(stdin.readLineSync());

  for (var i = 0; i < length; i++) {
    print(('*' * (i + 1)).padLeft(length));
  }
}
