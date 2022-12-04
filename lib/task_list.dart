import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'package:todo_flutter/task.dart';
import 'package:todo_flutter/task_data.dart';
import 'package:todo_flutter/task_tile.dart';

class TaskList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (BuildContext context, taskData, Widget? child) {
        return ListView.builder(
            itemBuilder: (context, index) {
              final task = taskData.tasks[index];
              return TaskTile(
                isChecked: task.isDone,
                taskName: task.name,
                checkboxCallBack: (bool checkBoxState) {
                  taskData.updateTask(task);
                },
                longPressCallBack: (){
                  taskData.deleteTask(task);
                },
              );
            },
            itemCount: taskData.tasks.length);
      },
    );
  }
}
