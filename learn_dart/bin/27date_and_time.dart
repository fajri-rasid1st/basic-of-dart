// Date and time

import 'package:intl/intl.dart';

void main(List<String> args) {
  // date time
  var dt = DateTime.now();
  var newDt = dt.subtract(const Duration(days: 7, minutes: 5, seconds: 30));

  print('Now: $dt -> SevenDaysAgo: $newDt');
  // add
  print(dt.add(const Duration(days: 3, hours: 12, minutes: 5)));
  // isAfter
  print(dt.isAfter(newDt));
  // isBefore
  print(dt.isBefore(newDt));
  // isAtSameMomentAs
  print(dt.isAtSameMomentAs(newDt));
  // difference
  print(dt.difference(newDt).inSeconds);
  // toUtc
  print(dt.toUtc());

  // date format
  var df = DateFormat('EE, dd MMMM y.').format(DateTime.parse('2021-08-09'));

  print(df);
}
