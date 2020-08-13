// List

import 'dart:io';
import 'dart:math';

void main(List<String> args) {
  var number = <num>[1, 2, 3, 4, 5];
  var ordinary = <dynamic>[1, 'hello', true, 3.14];
  var str = <String>['satu', 'dua', 'empat', 'sembilan', 'sepuluh'];
  var nilai = <List<dynamic>>[
    ['fajri', 80],
    ['rafmas', 70],
    ['devonian', 67],
    ['agus', 77],
    ['takdim', 50]
  ];

  printList(number);
  printList(ordinary);
  printList(str);
  printList(nilai);
  print('');

  // add
  ordinary.add(false);
  printList(ordinary);

  // addAll
  ordinary.addAll([10, 20, 30]);
  printList(ordinary);

  // insert
  ordinary.insert(0, 0);

  // ubah indeks tertentu
  ordinary[0] = null;
  printList(ordinary);

  // remove
  ordinary.remove(1);
  printList(ordinary);

  // removeAt
  ordinary.removeAt(5);
  printList(ordinary);

  // removeLast
  ordinary.removeLast();
  printList(ordinary);

  // removeWhere
  number.removeWhere((var element) => element % 2 == 0);
  printList(number);

  // removeRange
  ordinary.removeRange(3, 6);
  printList(ordinary);

  // sort
  str.sort((a, b) => a.compareTo(b));
  printList(str);
  str.sort((a, b) => a.length.compareTo(b.length));
  printList(str);

  // reversed
  printList(str.reversed.toList());

  // sorting list 2d atau lebih sesuai key
  nilai.sort((a, b) => a[1].compareTo(b[1]));
  printList(nilai);

  // mapping fungsi pada setiap item pada list
  var newNumber = number.map((var element) => pow(element, 2)).toList();
  printList(newNumber);

  // join
  var myString = 'b   a c  ef h g id'.replaceAll(RegExp(r'\s'), '').split('');
  myString.sort();
  print(myString.join('-'));
  print(myString.reversed.toList().join('-'));
}

void printList(List x) {
  x.forEach((var item) =>
      {item == x.last ? stdout.write('$item.') : stdout.write('$item, ')});
  print('');
}
