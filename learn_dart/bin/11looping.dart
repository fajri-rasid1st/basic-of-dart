// For loop, for each, while, do-while.

import 'dart:io';

void main(List<String> args) {
  var str = 'learning-dart';
  // for each
  for (var item in str.split('')) {
    stdout.write('$item ');
  }

  print('');

  // while loop
  // Membuat program untuk menampilkan bilangan prima sesuai dengan inputan user
  var min = int.tryParse(stdin.readLineSync());
  var primes = [];
  var x = 2;

  while (primes.length < min) {
    var y = 2;
    var condition = 0;

    while (true) {
      if (x % y == 0) {
        condition++;
      }

      if (x == y) {
        break;
      }

      y++;
    }

    if (condition == 1) {
      primes.add(x);
    }

    x++;
  }

  print('$min angka prima pertama adalah :');

  // for each easter egg
  primes.forEach((var prime) => {stdout.write('$prime ')});

  print('');

  // for Loop
  // mencari bilangan ganjil sesuai range yang diinput user
  var min_2 = int.tryParse(stdin.readLineSync());
  var odds = [];

  for (var i = 0; i <= min_2; i++) {
    if (i % 2 == 1) {
      odds.add(i);
    }
  }

  print('bilangan ganjil dalam range 1 - $min_2 adalah :');
  odds.forEach((var element) => {stdout.write('$element ')});

  print('');

  // do-while
  // validasi username atau password
  var check_password = true;

  do {
    stdout.write('username : ');
    var id = stdin.readLineSync();
    stdout.write('password : ');
    var password = stdin.readLineSync();

    if (password.length > 9 && id.contains(RegExp(r'[A-Za-z]+[0-9]+'))) {
      check_password = false;

      print('login berhasil!');
    } else {
      print('\nusername atau password salah!\n');
    }
  } while (check_password);
}
