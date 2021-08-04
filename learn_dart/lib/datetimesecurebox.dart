// Generic type

class DateTimeSecureBox {
  final DateTime _data;
  final String _pass;

  DateTimeSecureBox(this._data, this._pass);

  DateTime getData(String pass) => (pass == _pass) ? _data : null;
}
