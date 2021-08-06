// Functions

import 'dart:io';

void main(List<String> args) {
  greet_1();

  greet_2('fajri', 2001);

  print(factorial(6));

  greet_3();

  print(findPositiveNumber(num.tryParse(stdin.readLineSync())));

  getBiodata('fajri', 'H071191051', null);

  print(sumThreeNumber(b: 5, c: 10, a: 6.5));
  print(sumThreeNumber(a: 10, c: 3.14));
  print(sumThreeNumber());

  print(anonymousFunc('fajri'));
}

// 1. function without parameter and return type
void greet_1() {
  print('hello bosku!');
}

// 2. function with parameter and without return type
void greet_2(String name, num bornYear) {
  print('hy $name, umur anda sekarang ${2020 - bornYear}.');
}

// 3. function with parameter and return type
num factorial(num x) {
  return x == 1 ? 1 : x * factorial(x - 1);
}

// 4. Arrow function syntax
void greet_3() => print('hello world');
bool findPositiveNumber(num number) => number > 0;

// 5. Optional parameter of function (parameter in sequence)
void getBiodata([String name, String nim, int registYear]) {
  print('Name          : ${name ?? 'person'}');
  print('Id            : ${nim ?? 0}');
  print('Register year : ${registYear ?? 0}');
}

// 6. Default parameter of function (parameter aren't in sequence)
num sumThreeNumber({num a = 0, num b = 0, num c = 0}) {
  return a + b + c;
}

// 7. Anonymous arrow function
Function anonymousFunc = (String name) => 'hello world, $name!';
