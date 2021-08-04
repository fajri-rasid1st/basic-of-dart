// Generic type

class SecureBox<T> {
  final T _data;
  final String _pass;

  SecureBox(this._data, this._pass);

  T getData(String pass) => (pass == _pass) ? _data : null;
}
