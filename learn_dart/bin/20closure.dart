// Closure

import 'dart:math';

void main(List<String> args) {
  var closureExample = power(3);

  closureExample(2, 5);
  closureExample(2, 3);
  closureExample(6, 3);
  closureExample(5, 5);
  closureExample(1, 1);

  power(3)(1, 2);
  power(10)(1, 1);
}

Function power(int exponential) {
  var x = 0;

  return (int a, int b) {
    print('${++x}. value is ${pow(a + b, exponential)}');
  };

  // return (int a, int b) => pow(a + b, exponential);
}
