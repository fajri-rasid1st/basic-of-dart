// Exceptions

import 'dart:io';

void main(List<String> args) {
  try {
    var x = num.tryParse(stdin.readLineSync());
    var y = num.tryParse(stdin.readLineSync());

    print(x ~/ y);
  } on NoSuchMethodError {
    print('wrong input');
  } on UnsupportedError {
    print('can\'t divide by zero');
  } catch (_, s) {
    print(s);
  } finally {
    print('ok');
  }
}
