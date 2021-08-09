// Assert

import 'dart:io';

/* to run this file via command-line/terminal, use :
dart --enable-asserts file_name.dart */

void main(List<String> args) {
  while (true) {
    var str = stdin.readLineSync();

    try {
      assert(str.length >= 10, 'length password must >= 10!');
      assert(str.contains(RegExp(r'[0-9]+')), 'digit character not detected!');
      assert(str.contains(RegExp(r'[\W]+')), 'unique character not detected!');
      assert(
          str.contains(RegExp(r'[a-z]+')), 'lowercase character not detected!');
      assert(
          str.contains(RegExp(r'[A-Z]+')), 'uppercase character not detected!');

      print('Safe!');

      break;
    } catch (e) {
      print(e);
    }
  }
}
