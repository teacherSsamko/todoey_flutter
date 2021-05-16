import 'package:flutter/material.dart';
import 'package:todoey/widgets/task_tile.dart';
import 'package:provider/provider.dart';
import 'package:todoey/models/task_data.dart';

class TasksList extends StatefulWidget {
  @override
  _TasksListState createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            return TaskTile(
              title: taskData.tasks[index].taskName,
              isChecked: taskData.tasks[index].isDone,
              tileCallback: (checkboxState) {
                setState(() {
                  taskData.tasks[index].toggleCheck();
                });
              },
            );
          },
          itemCount: taskData.taskCount,
        );
      },
    );
  }
}
