import 'package:flutter/material.dart';

class TaskTile extends StatefulWidget {
  TaskTile({@required this.title});

  final String title;

  @override
  _TaskTileState createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  bool isChecked = false;
  void checkboxCallback(bool checkboxState) {
    setState(() {
      isChecked = checkboxState;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        widget.title,
        style: TextStyle(
          fontSize: 18.0,
          fontWeight: FontWeight.bold,
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: TaskCheckbox(
        checkboxState: isChecked,
        toggleCheckboxState: checkboxCallback,
      ),
    );
  }
}

class TaskCheckbox extends StatelessWidget {
  TaskCheckbox({this.checkboxState, this.toggleCheckboxState});

  final bool checkboxState;
  final Function toggleCheckboxState;

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      value: checkboxState,
      onChanged: toggleCheckboxState,
    );
  }
}
