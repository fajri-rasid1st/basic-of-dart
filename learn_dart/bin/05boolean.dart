// Boolean

import 'dart:io';

void main(List<String> args) {
  var x = true;
  var y = !true;
  var z = 10 <= 5;

  print('$x   $y   $z');

  if (num.parse(stdin.readLineSync()) > 0) {
    print(true);
  } else {
    print(false);
  }
}
