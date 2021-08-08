// Mengambil input user

import 'dart:io';

void main(List<String> args) {
  var x, y;

  stdout.write('Masukkan nama anda : ');
  x = stdin.readLineSync();

  stdout.write('Usia anda : ');
  y = num.tryParse(stdin.readLineSync());

  print('Halo $x, Usia anda adalah ${y ?? 0} tahun.');
}
