// Operators

import 'dart:io';

void main(List<String> args) {
  var x = stdin.readLineSync().split(' ').map((e) => num.tryParse(e)).toList();
  var y = x[0], z = x[1];

  // aritmatic operator
  print(y + z);
  print(y * z);
  print(y - z);
  print(y / z);
  print(y ~/ z);
  print(y % z);
  print((y + z) * (y - z));

  // increment and decrement
  print('\n${y++}    ${z--}');
  y += 10;
  z -= 10;
  print('$y    $z');
  print('${--y}    ${++z}\n');

  // comparator operation
  print(y == z);
  print(y != z);
  print(y > z);
  print(y < z);
  print(y >= z);
  print(y <= z);

  // logics operator
  if (y > 0 && z > 0) {
    print('\n$y and $z are positive number');
  } else if (y > 0 || z > 0) {
    print('\none of $y and $z is positive number');
  } else {
    print('\n$y and $z are not-positive number');
  }
}
