// Set

void main(List<String> args) {
  var a = <num>{1, 2, 5, 7};
  var b = <num>{5, 2, 10, 8};
  var c = <num>[1, 2, 3, 2, 1];

  // Convert set -> list
  print(b.toList(growable: true));

  // Convert list -> set
  print(c.toSet());

  // print element tertentu pada set
  print(a.elementAt(0));

  // union
  print(a.union(b));

  // intersection
  print(a.intersection(b));

  // difference (semua yang ada di a dan tidak ada di b)
  print(a.difference(b));
  print(b.difference(a));

  // every
  print(a.every((element) => !element.isNegative));

  // remove
  a.remove(5);
  print(a);

  // clear
  a.clear();
  print(a);
}
