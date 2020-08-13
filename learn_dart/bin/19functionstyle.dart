// Function style

import 'dart:math' as math;

void main(List<String> args) {
  // 1. Anonymous function
  var greet = () => print('hello world');
  greet();

  Function hypot = (num x, num y) => math.sqrt(math.pow(x, 2) + math.pow(y, 2));
  var result = hypot(5, 8) as num;
  print(result == result.toInt() ? result.toInt() : result.toStringAsFixed(2));

  print('');
  // opsi 1
  highOrderFunction_1('function hypotenuce', hypot);
  // opsi 2
  print(highOrderFunction_2((int x, int y) => x + y, (int x, int y) => x - y));
}

// 2. High-Order function
void highOrderFunction_1(String s, num Function(num x, num y) f) {
  var result = f(5.5, 8.5);
  print('$s = ${result.toStringAsFixed(3)}');
}

int highOrderFunction_2(
    int Function(int x, int y) add, int Function(int x, int y) min) {
  return add(10, 10) * min(10, 5);
}
