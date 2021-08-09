// Operator overriding

void main(List<String> args) {
  var heroA = Hero('gusion', 300);
  var heroB = Hero('gusion', 300);
  var newHero = heroA + heroB;

  print('${newHero.name} - ${newHero.hp}');
  print(heroA == heroB);
}

class Hero {
  final String _name;
  final int _hp;

  Hero(this._name, this._hp);

  String get name => _name;
  int get hp => _hp;

  Hero operator +(Hero other) {
    return Hero('$name ${other.name}', hp + other.hp);
  }

  @override
  bool operator ==(var other) {
    if (other is Hero) {
      if (other.name == name && other.hp == hp) {
        return true;
      }
    }

    return false;
  }
}
