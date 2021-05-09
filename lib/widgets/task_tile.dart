import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  TaskTile({@required this.title, this.isChecked, this.tileCallback});

  final String title;
  final bool isChecked;
  final Function tileCallback;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        title,
        style: TextStyle(
          fontSize: 18.0,
          fontWeight: FontWeight.bold,
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        value: isChecked,
        onChanged: tileCallback,
      ),
    );
  }
}
