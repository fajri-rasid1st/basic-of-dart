// Exceptions

import 'dart:io';

void main(List<String> args) {
  try {
    var x = num.tryParse(stdin.readLineSync());
    var y = num.tryParse(stdin.readLineSync());

    print(x ~/ y);
  } on NoSuchMethodError {
    print('wrong input');
  } on IntegerDivisionByZeroException {
    print('can\'t divide by zero');
  } catch (e) {
    // print(e);
  } finally {
    print('ok');
  }
}
