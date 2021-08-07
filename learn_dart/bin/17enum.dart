enum Status { In_Progress, Todo, In_Review, Done }

void main(List<String> args) {
  var s = MyStatus(taskStatus: Status.In_Review);

  s.statusInfo();
  s.greet();
  print('');

  // cascade notation
  MyStatus(taskStatus: Status.In_Progress)
    ..statusInfo()
    ..greet();

  print('');
  print(Status.values);
  print(Status.Done.index);
}

class MyStatus {
  final Status taskStatus;

  MyStatus({this.taskStatus}) {
    print('This is your task status!');
  }

  void statusInfo() {
    switch (taskStatus) {
      case Status.Todo:
        print('Task is still in To do');
        break;
      case Status.In_Progress:
        print('Task is in progress');
        break;
      case Status.In_Review:
        print('Task is currently under review');
        break;
      case Status.Done:
        print('Task is done');
        break;
    }
  }

  void greet() {
    print('Have a nice day!');
  }
}
