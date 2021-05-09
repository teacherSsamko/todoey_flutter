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
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTile(
          title: tasks[index].taskName,
          isChecked: tasks[index].isDone,
          tileCallback: (checkboxState) {
            setState(() {
              tasks[index].toggleCheck();
            });
          },
        );
      },
      itemCount: tasks.length,
    );
  }
}
