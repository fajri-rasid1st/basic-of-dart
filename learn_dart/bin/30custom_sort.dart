void main(List<String> args) {
  var collegeStudent = <CollegeStudent>[
    CollegeStudent('Bayu Ajid', 'H071191023', 2019),
    CollegeStudent('Bayu Ajid', 'H071191023', 2020),
    CollegeStudent('Bayu Ajid', 'H071191023', 2018),
    CollegeStudent('Ikhsan', 'H071191049', 2021),
    CollegeStudent('Ikhsan', 'H071191049', 2016),
    CollegeStudent('Ikhsan', 'H071191040', 2018),
    CollegeStudent('Devonian', 'H071191010', 2018),
    CollegeStudent('Devonian', 'H071191035', 2018),
    CollegeStudent('Devonian', 'H071191008', 2021),
  ];

  collegeStudent.sort((cs1, cs2) {
    if (cs1.name.compareTo(cs2.name) == 0) {
      if (cs1.id.compareTo(cs2.id) == 0) {
        return cs1.registerYear.compareTo(cs2.registerYear);
      }

      return cs1.id.compareTo(cs2.id);
    }

    return cs1.name.compareTo(cs2.name);
  });

  collegeStudent.forEach((cs) => print(cs.status));
}

class CollegeStudent {
  final String _name, _id;
  final int _registerYear;

  CollegeStudent(this._name, this._id, this._registerYear);

  String get name => _name;
  String get id => _id;
  int get registerYear => _registerYear;

  String get status => '$name - $id - $registerYear';
}
