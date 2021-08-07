// Const and Final (advanced)

// top-level const
const double g = 9.83;

void main(List<String> args) {
  final number = 10;
  print(number);

  var myClass = FinalClass(number: 20);
  print(myClass.number);

  // identic
  var a = const ConstClass(number: 30);
  var b = const ConstClass(number: 30);
  print(identical(a, b));
}

class FinalClass {
  // final keyword as field in class
  final int number;
  // only static const can initiated in field of class
  static const double pi = 3.14;

  FinalClass({this.number}) {
    const e = 2.71;
    print(e);
  }
}

class ConstClass {
  final int number;

  const ConstClass({this.number});
}
