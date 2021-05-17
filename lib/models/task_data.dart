import 'package:flutter/foundation.dart';
import 'package:todoey/models/task.dart';
import 'dart:collection';

class TaskData extends ChangeNotifier {
  List<Task> _tasks = [
    Task(taskName: 'buy iMac'),
    Task(taskName: 'buy iPad'),
    Task(taskName: 'buy macbook'),
  ];

  int get taskCount {
    return _tasks.length;
  }

  UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView(_tasks);
  }

  void addTask(String newTaskName) {
    final newTask = Task(taskName: newTaskName);
    _tasks.add(newTask);
    notifyListeners();
  }
}
