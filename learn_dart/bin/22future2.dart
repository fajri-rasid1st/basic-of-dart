// Future with async-await

import '21future.dart';

Future<void> main(List<String> args) async {
  print('getting your order....');
  try {
    var order = await getOrder('ayam goyeng', 25000, stock: false);
    print('hy cick\n$order');
  } catch (err) {
    print('Sorry, $err');
  } finally {
    print('thank you :)');
  }
}
