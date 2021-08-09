// Future

void main(List<String> args) {
  getOrder('coffee bobba', 15000, isAvailable: true).then((value) {
    print('hy cick\n$value');
  }).catchError((error) {
    print('Sorry, $error');
  }).whenComplete(() {
    print('thank you :)');
  });

  print('wait a minute, while we make your order...');
}

// fungsi dengan return type Future<String>
Future<String> getOrder(String order, int payment, {bool isAvailable = false}) {
  return Future.delayed(Duration(seconds: 3), () {
    if (isAvailable) {
      return 'your order : $order\npayment    : Rp.$payment'; // value
    } else {
      throw 'Our stock is empty.'; // error
    }
  });
}
