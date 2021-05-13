import 'package:flutter/material.dart';
import 'package:todoey/screens/tasks_screen.dart';
import 'package:provider/provider.dart';
import 'package:todoey/models/task.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  List<Task> tasks = [
    Task(taskName: 'buy iMac'),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TasksScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
