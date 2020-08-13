import 'dart:io';
import 'package:dart_oop_2/bangundatar.dart';

void main(List<String> args) {
  var persegi_1 = Persegi(num.tryParse(stdin.readLineSync()));
  persegi_1.cariLuas();
  persegi_1.cariKeliling();
  persegi_1.getStatus();

  var persegiPanjang = PersegiPanjang(
      num.tryParse(stdin.readLineSync()), num.tryParse(stdin.readLineSync()));
  persegiPanjang.cariLuas();
  persegiPanjang.cariKeliling();
  persegiPanjang.getStatus();

  var lingkaran = Lingkaran(num.tryParse(stdin.readLineSync()));
  lingkaran.cariLuas();
  lingkaran.cariKeliling();
  lingkaran.getStatus();
}
