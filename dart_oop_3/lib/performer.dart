// Diamond Problem

abstract class Performer {
  void perform();
}

mixin Singer implements Performer {
  @override
  void perform() {
    print('singing');
  }
}

mixin Dancer implements Performer {
  @override
  void perform() {
    print('dancing');
  }
}

class Musician extends Performer with Singer, Dancer {
  void showTime() {
    perform();
  }
}
