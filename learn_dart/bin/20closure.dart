import 'dart:math';

// Closure

void main(List<String> args) {
  var closureExample = power(2);
  closureExample(2, 5);
  closureExample(2, 3);
  closureExample(6, 3);
}

Function power(int exponential) {
  var x = 0;

  return (int a, int b) {
    print('${++x}. value is ${pow((a + b), exponential)}');
  };
}
