import 'dart:math' as math;
// abstract class dan interface

// Abstract class
abstract class BangunDatar {
  // attribute
  num _luas;
  num _keliling;

  // getter
  num get luas => _luas == _luas.toInt() ? _luas.toInt() ?? 0 : _luas ?? 0;

  // getter
  num get keliling =>
      _keliling == _keliling.toInt() ? _keliling.toInt() ?? 0 : _keliling ?? 0;

  // status
  void getStatus() {
    print('luas     : $luas');
    print('keliling : $keliling');
  }

  // round result to 2 decimal places
  num roundToTwoDecimalPlaces(num result) {
    return (result * 100).roundToDouble() / 100;
  }
}

// interface
abstract class Operasi {
  // hitung luas
  void hitungLuas();
  // hitung keliling
  void hitungKeliling();
}

// mewarisi class bangun datar dan menginplement class operasi
class Persegi extends BangunDatar implements Operasi {
  final num _sisi;

  Persegi(this._sisi);

  @override
  void hitungLuas() {
    _luas = roundToTwoDecimalPlaces(_sisi * _sisi);
  }

  @override
  void hitungKeliling() {
    _keliling = roundToTwoDecimalPlaces(4 * _sisi);
  }
}

// mewarisi class bangun datar dan menginplement kelas operasi
class PersegiPanjang extends BangunDatar implements Operasi {
  final num _sisi1, _sisi2;

  PersegiPanjang(this._sisi1, this._sisi2);

  @override
  void hitungLuas() {
    _luas = roundToTwoDecimalPlaces(_sisi1 * _sisi2);
  }

  @override
  void hitungKeliling() {
    _keliling = roundToTwoDecimalPlaces(2 * (_sisi1 + _sisi2));
  }
}

// mewarisi class bangun datar dan menginplement class operasi
class Lingkaran extends BangunDatar implements Operasi {
  final num _jari_jari;

  Lingkaran(this._jari_jari);

  @override
  void hitungLuas() {
    _luas = roundToTwoDecimalPlaces(math.pi * math.pow(_jari_jari, 2));
  }

  @override
  void hitungKeliling() {
    _keliling = roundToTwoDecimalPlaces(2 * math.pi * _jari_jari);
  }
}
