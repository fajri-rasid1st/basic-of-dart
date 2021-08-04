// Generic type

class IntSecureBox {
  final int _data;
  final String _pass;

  IntSecureBox(this._data, this._pass);

  int getData(String pass) => (pass == _pass) ? _data : null;
}
