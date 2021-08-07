// Date and time

import 'package:intl/intl.dart';

void main(List<String> args) {
  var dateFormat =
      DateFormat('EEEE, d MMMM y.').format(DateTime.parse('1945-08-17'));

  print(dateFormat);
}
