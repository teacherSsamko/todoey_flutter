import 'package:flutter/material.dart';
import 'package:todoey/widgets/task_tile.dart';
import 'package:todoey/models/task.dart';

class TasksList extends StatefulWidget {
  final List<Task> tasks;

  TasksList(this.tasks);

  @override
  _TasksListState createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTile(
          title: widget.tasks[index].taskName,
          isChecked: widget.tasks[index].isDone,
          tileCallback: (checkboxState) {
            setState(() {
              widget.tasks[index].toggleCheck();
            });
          },
        );
      },
      itemCount: widget.tasks.length,
    );
  }
}
