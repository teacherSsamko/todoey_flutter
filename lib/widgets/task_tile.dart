import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  TaskTile({@required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        title,
        style: TextStyle(
          fontSize: 18.0,
          fontWeight: FontWeight.bold,
        ),
      ),
      trailing: Checkbox(
        value: false,
        onChanged: (value) {
          print(value);
        },
      ),
    );
  }
}
