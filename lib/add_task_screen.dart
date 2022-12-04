import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_flutter/task_data.dart';

class AddTaskScreen extends StatelessWidget {
  // const AddTaskScreen({Key? key}) : super(key: key);

  final Function addTaskCallBack;

  AddTaskScreen(this.addTaskCallBack);

  @override
  Widget build(BuildContext context) {
    late String newTextTitle;

    return Container(
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.all(30),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          )
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text('Add Task', style: TextStyle(color: Colors.red[200], fontSize: 25), textAlign: TextAlign.center,),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              onChanged: (newText) {
                newTextTitle = newText;
              },
            ),
            TextButton(
              onPressed: () {
                // addTaskCallBack(newTextTitle);
                Provider.of<TaskData>(context, listen: false).addTask(newTextTitle);
                Navigator.pop(context);
              },
              child: Text('Add', style: TextStyle(color: Colors.white),),
              style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.red[200])),)
          ],
        ),
      ),
    );
  }
}
