// Diamond Problem

abstract class Performer {
  void perform();
}

mixin Dancer implements Performer {
  @override
  void perform() {
    print('dancing');
  }
}

mixin Singer implements Performer {
  @override
  void perform() {
    print('singing');
  }
}

class Musician extends Performer with Singer, Dancer {
  void showTime() {
    perform();
  }
}
