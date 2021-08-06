// If-else, Ternary, Switch-case.

import 'dart:io';

void main(List<String> args) {
  while (true) {
    stdout.write('Pilih Aplikasi :\n1. Penentuan Nilai\n2. Kalkulator\n> ');

    try {
      var choice = int.parse(stdin.readLineSync());
      // switch case
      switch (choice) {
        case 1:
          while (true) {
            try {
              stdout.write('masukkan nilai anda : ');

              var score = num.parse(stdin.readLineSync());

              print('Anda mendapatkan point : ${calculateScore(score)}');
            } catch (e) {
              print('\ninvalid input!\n');
              break;
            }
          }

          break;
        case 2:
          while (true) {
            try {
              print('1. +\n2. -\n3. * \n4. \\');
              stdout.write('pilih operasi yang diinginkan : ');

              var choice = int.parse(stdin.readLineSync());

              if (choice < 1 || choice > 4) {
                print('\noperator not found\n');
                continue;
              }

              var x = num.parse(stdin.readLineSync());
              var y = num.parse(stdin.readLineSync());

              print('Hasil : ${simpleCalculator(x, y, choice)}\n');
            } catch (e) {
              print('\ninvalid input!\n');
              break;
            }
          }

          break;
        default:
          print('\ninvalid command!\n');
      }
    } catch (e) {
      print('\nperintah tidak sesuai, aplikasi keluar!\n');
      break;
    }
  }
}

// aplikasi menentukan nilai
String calculateScore(num score) {
  // if else
  if (score >= 90) {
    return 'A\n';
  } else if (score >= 80) {
    return 'B\n';
  } else if (score >= 70) {
    return 'C\n';
  } else if (score >= 55) {
    return 'D\n';
  } else {
    return 'E\n';
  }
}

// aplikasi kalkulator sederhana
num simpleCalculator(num x, num y, int c) {
  // ternary operator
  return c == 1
      ? x + y
      : c == 2
          ? x - y
          : c == 3
              ? x * y
              : c == 4
                  ? x / y
                  : 0;
}
