// Future

void main(List<String> args) {
  getOrder('coffee bobba', 15000, stock: true).then((var value) {
    print('hy cick\n$value');
  }).catchError((var err) {
    print('Sorry, $err');
  }).whenComplete(() {
    print('thank you :)');
  });

  print('wait a minute, while we make your order....');
}

// fungsi dengan return type Future<String>
Future<String> getOrder(String order, int payment, {bool stock = false}) {
  return Future.delayed(Duration(seconds: 3), () {
    var isEmpty = stock;

    if (isEmpty) {
      throw 'Our stock is empty.';
    } else {
      return 'your order : $order\npayment    : Rp.$payment';
    }
  });
}
