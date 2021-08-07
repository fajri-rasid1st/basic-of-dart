// Function style

import 'dart:math' as math;

void main(List<String> args) {
  // 1. Anonymous function
  print('\nExample Anonymous Function');
  // 1.1 Anonymous function option 1
  var findOddNumber = (int start, int length) {
    var result = <int>[];

    while (start <= length) {
      if (start % 2 == 1) result.add(start);
      start++;
    }

    return result;
  };
  // 1.1 Print the result
  print(findOddNumber(1, 10).join(', ') + '.');

  // 1.2 Anonymous function option 2
  Function hypot = (num x, num y) => math.sqrt(math.pow(x, 2) + math.pow(y, 2));
  // 1.2 Call and put the return function to variable
  var result = hypot(3, 4) as num;
  // 1.2 Print the result
  print(result == result.toInt() ? result.toInt() : result.toStringAsFixed(2));

  print('\nExample High Order Function');
  // opsi 1 (High-Order function)
  highOrderFunction_1('function hypotenuce', hypot);
  // opsi 2 (High-Order function)
  print(highOrderFunction_2((int x, int y) => x + y, (int x, int y) => x - y));
}

// 2. High-Order function
void highOrderFunction_1(String s, num Function(num x, num y) f) {
  var result = f(5, 8);
  print('$s = ${result.toStringAsFixed(2)}');
}

int highOrderFunction_2(
    int Function(int x, int y) add, int Function(int x, int y) min) {
  return add(10, 10) * min(10, 5);
}
