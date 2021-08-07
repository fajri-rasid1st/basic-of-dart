// Map or Dictionary

import 'dart:io';

void main(List<String> args) {
  var capital = <String, String>{
    'jakarta': 'indonesia',
    'london': 'england',
    'tokyo': 'japan',
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
  capital.forEach((key, value) {
    key == capital.keys.last
        ? stdout.write('$value.\n')
        : stdout.write('$value, ');
  });

  capital.keys.forEach((item) {
    item == capital.keys.last
        ? stdout.write('$item.\n')
        : stdout.write('$item, ');
  });

  // addAll
  capital.addAll({'sanghai': 'china', 'roma': 'italy', 'paris': 'france'});
  print(capital);

  // remove
  print(capital.remove('london'));
  print(capital);

  // updateAll
  capital.updateAll((_, value) => value + 'os');
  print(capital);

  // update
  capital.update('sanghai', (value) => 'mars');
  print(capital);

  // clear
  capital.clear();
  print(capital);
}
