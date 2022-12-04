import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {

  final bool isChecked;
  final String taskName;
  final Function(bool value) checkboxCallBack;
  final Function() longPressCallBack;

  TaskTile({required this.isChecked, required this.taskName, required this.checkboxCallBack, required this.longPressCallBack});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longPressCallBack,
        title: Text(
          taskName,
          style: TextStyle(
              fontSize: 20,
              decoration: isChecked ? TextDecoration.lineThrough : null),
        ),
        trailing: Checkbox(
          value: isChecked,
          activeColor: Colors.pink[800],
          onChanged: (value) {
            checkboxCallBack(value!);
          },
        ),
    );
  }
}

class TaskCheckbox extends StatelessWidget {
  final bool checkBoxState;
  final Function(bool value) toggleCheckbox;

  TaskCheckbox(this.checkBoxState, this.toggleCheckbox);

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      value: checkBoxState,
      activeColor: Colors.pink[800],
      onChanged: (value) => toggleCheckbox(value!),
    );
  }
}
