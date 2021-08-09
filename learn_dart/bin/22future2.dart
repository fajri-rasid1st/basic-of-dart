// Future with async-await

import '21future.dart';

Future<void> main(List<String> args) async {
  print('getting your order...');

  try {
    var order = await getOrder('ayam goyeng', 25000, isAvailable: true);

    print('hy cick\n$order');
  } catch (error) {
    print('Sorry, $error');
  } finally {
    print('thank you :)');
  }
}
