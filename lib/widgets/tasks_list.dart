import 'package:flutter/material.dart';
import 'package:todoey/widgets/task_tile.dart';
import 'package:todoey/models/task.dart';

class TasksList extends StatefulWidget {
  @override
  _TasksListState createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  List<Task> tasks = [
    Task(taskName: 'Buy macbook'),
    Task(taskName: 'Buy apple'),
    Task(taskName: 'Buy notepad'),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        TaskTile(
          title: tasks[0].taskName,
          isChecked: tasks[0].isDone,
        ),
        TaskTile(
          title: tasks[1].taskName,
          isChecked: tasks[1].isDone,
        ),
        TaskTile(
          title: tasks[2].taskName,
          isChecked: tasks[2].isDone,
        ),
      ],
    );
  }
}
