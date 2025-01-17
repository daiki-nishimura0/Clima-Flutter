import 'dart:io';

void main() {
  performTasks();
}

void performTasks() async {
  task1();
  String task2Result = await task2();
  task3(task2Result);
}

void task1()  {
  String result = 'task1';
  print('task1 complete');
}

Future task2() async {
  Duration threeSeconds = Duration(seconds: 3);

  String result;

  await Future.delayed(threeSeconds, () {
  result = 'task2';
  print('task2 complete');
  });

  return result;
}

void task3(String task2Data) {
  String result = 'task3';
  print('task3 complete $task2Data');
}
