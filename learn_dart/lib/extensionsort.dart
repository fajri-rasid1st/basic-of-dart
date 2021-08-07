// make an extension to list<int>

/* extension <extension name> on <type> {
    <method>
  } */

extension SortingReverse on List<int> {
  List<int> sortReverse() {
    var list = this;

    for (var i = 0; i < list.length - 1; i++) {
      var min = i;

      for (var j = i + 1; j < length; j++) {
        if (list[j] < list[min]) {
          min = j;
        }
      }

      var tmp = list[min];

      list[min] = list[i];
      list[i] = tmp;
    }

    var newList = List<int>.filled(list.length, 0);

    for (var i = list.length - 1; i > -1; i--) {
      newList[(list.length - 1) - i] = list[i];
    }

    return newList;
  }
}
