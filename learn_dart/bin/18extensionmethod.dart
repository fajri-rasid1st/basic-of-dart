import 'dart:io';
import 'package:learn_dart/extensionsort.dart';

void main(List<String> args) {
  var list = [2, 4, 6, 7, 5, 1, 3, 10, 8, 9].sortReverse();
  list.forEach((var element) => {
        element == list.last
            ? stdout.write('$element.')
            : stdout.write('$element, ')
      });
}
