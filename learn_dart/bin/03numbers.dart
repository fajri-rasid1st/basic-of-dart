// numbers

import 'dart:math' as math;

void main(List<String> args) {
  var integer_1 = 2020;
  var integer_2 = -10;
  var decimal_1 = 3.14159;
  var decimal_2 = 50.5.roundToDouble();
  var hex = 0xDEADBEFF;
  var number = '100';
  var number2 = '81.1';

  print('integer                     : $integer_1');
  print('abs()                       : ${integer_2.abs()}');
  print('ceil (pembulatan ke atas)   : ${decimal_1.ceil()}');
  print('floor (pembulatan ke bawah) : ${decimal_1.floor()}');
  // (0 - 4) akan dibulatkan ke bawah (5 - 9) akan dibulatkan ke atas
  print('round (pembulatan terdekat) : $decimal_2');
  print('0xDEADBEFF                  : $hex');
  print('10 to hex --->              : ${integer_2.abs().toRadixString(16)}');
  print(math.sqrt(integer_1));
  print(math.pow(integer_2, 2));

  // Casting DataType
  print('');
  // int -> string
  print(integer_1.toStringAsFixed(1));
  // double -> string
  print(decimal_1.toStringAsFixed(2));
  // string -> int
  print(int.parse(number));
  // string -> double (tryParse will return null if ParseException)
  print(double.tryParse(number));
  // string -> number (automatic convert to int/double)
  print(num.parse(number2));
}
