// Map or Dictionary

import 'dart:io';

void main(List<String> args) {
  var capital = <String, String>{
    'jakarta': 'indonesia',
    'london': 'inggris',
    'tokyo': 'japan'
  };

  // tampilkan value dari key tertentu
  print(capital['tokyo']);

  // tampilkan semua key
  print(capital.keys);

  // tampilkan semua value
  print(capital.values);

  // tambah map ke index terakhir
  capital['seoul'] = 'korea';
  print(capital);

  // mengecek apakah (key) ada di map
  print(capital.containsKey('new delhi'));

  // mengecek apakah (value) ada di map
  print(capital.containsValue('japan'));

  // for each pada map
  capital.forEach((var key, var value) => {
        key == capital.keys.last
            ? stdout.write('${capital[key]}.')
            : stdout.write('${capital[key]}, ')
      });
  print('');
  capital.keys.forEach((var item) => {
        item == capital.keys.last
            ? stdout.write('$item.')
            : stdout.write('$item, ')
      });
}
