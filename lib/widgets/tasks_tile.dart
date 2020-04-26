import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {


  bool isChecked = false;
  final String taskTitle;
  final Function checkboxCallback;
  final Function longPressCallBack;
  TaskTile ({this.isChecked, this.taskTitle, this.checkboxCallback, this.longPressCallBack});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longPressCallBack,

      title: Text(taskTitle, style: TextStyle(
        decoration: isChecked ? TextDecoration.lineThrough : null
      ),),
      trailing: Checkbox(
        value: isChecked,
        activeColor: Colors.lightBlueAccent,
        onChanged: checkboxCallback,
      ),
    );
  }
}
