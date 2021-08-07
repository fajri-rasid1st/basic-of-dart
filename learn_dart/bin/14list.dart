// List

import 'dart:io';
import 'dart:math';

void main(List<String> args) {
  var numbers = <num>[1, 2, 3, 4, 5];
  var ordinaryList = <dynamic>[1, 'hello', true, 3.14];
  var str = <String>['satu', 'dua', 'empat', 'sembilan', 'sepuluh'];
  var nilai = <List<dynamic>>[
    ['fajri', 80],
    ['rafmas', 70],
    ['devonian', 67],
    ['agus', 79],
    ['takdim', 50]
  ];

  printList(numbers);
  printList(ordinaryList);
  printList(str);
  printList(nilai);
  print('');

  // add
  ordinaryList.add(false);
  printList(ordinaryList);

  // addAll
  ordinaryList.addAll([10, 20, 30]);
  printList(ordinaryList);

  // insert
  ordinaryList.insert(0, 0);
  printList(ordinaryList);

  // ubah indeks tertentu
  ordinaryList[0] = null;
  printList(ordinaryList);

  // remove
  ordinaryList.remove(1);
  printList(ordinaryList);

  // removeAt
  ordinaryList.removeAt(5);
  printList(ordinaryList);

  // removeLast
  ordinaryList.removeLast();
  printList(ordinaryList);

  // removeWhere
  numbers.removeWhere((element) => element % 2 == 0);
  printList(numbers);

  // removeRange
  ordinaryList.removeRange(3, 6);
  printList(ordinaryList);

  // sort
  str.sort((a, b) => a.compareTo(b));
  printList(str);

  // cascade notation
  print(str..sort((a, b) => a.length.compareTo(b.length)));

  // reversed
  printList(str.reversed.toList());

  // sorting list 2d atau lebih sesuai key
  nilai.sort((a, b) => a[1].compareTo(b[1]) * -1);
  printList(nilai);

  // mapping fungsi pada setiap item pada list
  var newNumber = numbers.map((element) => pow(element, 2)).toList();
  printList(newNumber);

  // join
  var myString = 'b    a c  ef h g id'.replaceAll(RegExp(r'\s'), '').split('');
  myString.sort();
  print(myString.join('-'));
  print(myString.reversed.toList().join('-'));
}

void printList(List x) {
  x.forEach((item) {
    item == x.last ? stdout.write('$item.\n') : stdout.write('$item, ');
  });
}
