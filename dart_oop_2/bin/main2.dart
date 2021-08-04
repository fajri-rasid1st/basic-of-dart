import 'package:dart_oop_2/bangundatar.dart';

void main(List<String> args) {
  var persegi_1 = Persegi(12.5);
  persegi_1.cariLuas();
  persegi_1.cariKeliling();
  persegi_1.getStatus();

  var persegiPanjang = PersegiPanjang(10, 2.5);
  persegiPanjang.cariLuas();
  persegiPanjang.cariKeliling();
  persegiPanjang.getStatus();

  var lingkaran = Lingkaran(16.25);
  lingkaran.cariLuas();
  lingkaran.cariKeliling();
  lingkaran.getStatus();
}
