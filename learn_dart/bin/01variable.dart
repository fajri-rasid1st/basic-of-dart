// variabel dan tipe data
void main(List<String> args) {
  // inisialisasi variable dengan var
  var a = 'hello world!';
  var b = 20;
  var c = 3.14;
  var d = true;
  num e = 999 + 3.14;
  var f = [1, 2, 3.14, true, 'false'];
  var g = {'x': 10, 'y': 20, 'z': 30};
  print(
      'String : $a\nint : $b\ndouble : $c\nbool : $d\nnum : $e\nlist : $f\nmap : $g\n');

  // inisialisasi variable dengan type data
  /* "omit type annotations for local variables" untuk variabel lokal, tidak disarankan menggunakan anotasi type data */

  // bool x = true;
  // String y = '';
  // List z = [1, 2, 3];

  // dynamic data type
  var x;
  x = 10;
  print(x);
  x = ['apple', 'banana', 'durian'];
  print(x);
  x = 'hello dart!';
  print(x);

  // check runtimetype from datatype
  print('');
  print(a.runtimeType);
  print(b.runtimeType);
  print(c.runtimeType);
  print(d.runtimeType);
  print(e.runtimeType);
  print(f.runtimeType);
  print(g.runtimeType);
  print(x.runtimeType);
}
