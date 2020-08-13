// Converter Application

import 'dart:io';

void main(List<String> args) {
  while (true) {
    stdout.write('1. celcius\n2. fahrenheit\n3. kelvin\n0. exit\n');
    stdout.write('pilih temperatur yang akan diinput :\n> ');

    try {
      var choice = int.parse(stdin.readLineSync());

      if (choice == 0) {
        break;
      } else if (choice < 0 || choice > 3) {
        print('\npilihan tidak ada!\n');
        continue;
      }

      stdout.write('masukkan nilai : ');
      var value = num.tryParse(stdin.readLineSync());

      switch (choice) {
        case 1:
          var result = celciusConverter(value);
          print(
              '\nfahrenheit : ${result[0]}\u00B0F\nkelvin : ${result[1]}\u00B0K\n');
          break;
        case 2:
          var result = fahrenheitConverter(value);
          print(
              '\ncelcius : ${result[0]}\u00B0C\nkelvin : ${result[1]}\u00B0K\n');
          break;
        case 3:
          var result = kelvinConverter(value);
          print(
              '\ncelcius : ${result[0]}\u00B0C\nfahrenheit : ${result[1]}\u00B0F\n');
          break;
        default:
          break;
      }
    } on FormatException {
      print('\npilihan tidak ada!\n');
    } on NoSuchMethodError {
      print('\nType a number, not string!\n');
    }
  }
}

List celciusConverter(num c) {
  var result = <num>[((9 / 5) * c) + 32, c + 273];

  for (var i = 0; i < result.length; i++) {
    if (result[i] == result[i].toInt()) {
      result[i] = result[i].toInt();
    } else {
      result[i] = double.parse(result[i].toStringAsFixed(2));
    }
  }

  return result;
}

List fahrenheitConverter(num f) {
  var result = <num>[5 / 9 * (f - 32), 5 / 9 * (f - 32) + 273];

  for (var i = 0; i < result.length; i++) {
    if (result[i] == result[i].toInt()) {
      result[i] = result[i].toInt();
    } else {
      result[i] = double.parse(result[i].toStringAsFixed(2));
    }
  }

  return result;
}

List kelvinConverter(num k) {
  var result = <num>[k - 273, 9 / 5 * (k - 273) + 32];

  for (var i = 0; i < result.length; i++) {
    if (result[i] == result[i].toInt()) {
      result[i] = result[i].toInt();
    } else {
      result[i] = double.parse(result[i].toStringAsFixed(2));
    }
  }

  return result;
}
