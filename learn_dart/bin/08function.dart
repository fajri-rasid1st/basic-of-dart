// Functions

import 'dart:io';

void main(List<String> args) {
  greet_1();
  greet_2('fajri', 2001);
  print(factorial(5));
  // ----------------------------------------- //
  greet_3();
  if (findPositiveNumber(num.tryParse(stdin.readLineSync()))) {
    print('kamu memasukkan angka positif');
  } else {
    print('kamu memasukkan angka non-positif');
  }
  // ----------------------------------------- //
  getBiodata('fajri', null, 2019);
  print(sumThreeNumber(b: 5, c: 10, a: 6.5));
  print(sumThreeNumber(a: 10, c: 3.14));
  print(sumThreeNumber());

  // anonymous arrow function
  var a = (String name) => 'hello world, $name!';
  print(a('fajri'));
}

// 1. function without parameter and return type
void greet_1() {
  print('Hello Bosku!');
}

// 2. function with parameter and without return type
void greet_2(String name, num bornYear) {
  print('Hy $name, umur anda sekarang ${2020 - bornYear}.');
}

// 3. function with parameter and return type
num factorial(num x) {
  if (x == 1) {
    return 1;
  }

  return x * factorial(x - 1);
}

// Arrow function syntax
void greet_3() => print('\nhello world');
bool findPositiveNumber(num number) => number > 0;

// Optional parameter of function (parameter in sequence)
void getBiodata([String name, String nim, int registYear]) {
  print('\nName          : ${name ?? 'person'}');
  print('Id            : ${nim ?? 0}');
  print('Register year : ${registYear ?? 0}');
}

// Default parameter of function (parameter aren't in sequence)
num sumThreeNumber({num a = 0, num b = 0, num c = 0}) {
  return a + b + c;
}
