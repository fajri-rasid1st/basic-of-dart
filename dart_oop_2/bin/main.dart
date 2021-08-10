import 'package:dart_oop_2/bangundatar.dart';

void main(List<String> args) {
  var persegi_1 = Persegi(12.5);
  persegi_1.hitungLuas();
  persegi_1.hitungKeliling();
  persegi_1.getStatus();

  var persegiPanjang = PersegiPanjang(10, 2.5);
  persegiPanjang.hitungLuas();
  persegiPanjang.hitungKeliling();
  persegiPanjang.getStatus();

  var lingkaran = Lingkaran(16.25);
  lingkaran.hitungLuas();
  lingkaran.hitungKeliling();
  lingkaran.getStatus();
}
