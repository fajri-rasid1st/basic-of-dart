// Const and Final

import 'dart:io';
import 'dart:math' as math;

// global scope variable
// constanta dan final
const num pi_1 = 3.14;
final num pi_2 = math.pi;

void main(List<String> args) {
  // local scope variable
  var price = num.tryParse(stdin.readLineSync());
  print('you need to pay : ${price - checkDiscount(price)}');

  stdout.write('\nMasukkan jari-jari lingkaran : ');
  var radius = int.tryParse(stdin.readLineSync());
  stdout.write('cari keliling atau luas? : ');
  var command = stdin.readLineSync();
  print(calculateCircle(radius, command));
}

num checkDiscount(num price) {
  // local scope variable
  var discount;

  if (price >= 100000) {
    discount = price * 0.1;
  } else {
    discount = price * 0.05;
  }

  return discount;
}

num calculateCircle(num radius, String command) =>
    command == 'luas' ? pi_1 * math.pow(radius, 2) : 2 * pi_2 * radius;
