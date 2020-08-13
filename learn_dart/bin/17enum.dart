enum Rainbow { red, orange, yellow, green, blue, indigo, violet }
enum Status { In_Progress, Todo, In_Review, Done }

void main(List<String> args) {
  print(Rainbow.values);
  print(Rainbow.violet.index);
  print(Rainbow.green);

  var taskStatus = Status.In_Review;

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
