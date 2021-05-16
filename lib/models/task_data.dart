import 'package:flutter/foundation.dart';
import 'package:todoey/models/task.dart';

class TaskData extends ChangeNotifier {
  List<Task> tasks = [
    Task(taskName: 'buy iMac'),
    Task(taskName: 'buy iPad'),
    Task(taskName: 'buy macbook'),
  ];

  int get taskCount {
    return tasks.length;
  }
}
