import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_flutter/task.dart';
import 'package:todo_flutter/task_data.dart';
import 'package:todo_flutter/task_list.dart';
import 'add_task_screen.dart';
import 'package:provider/provider.dart';

class TaskScreen extends StatelessWidget {

  Widget buildBottomSheet(BuildContext context) {
    return AddTaskScreen((newTaskTitle) {

    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red[200],
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: buildBottomSheet,
            isScrollControlled: true,
          );
        },
        backgroundColor: Colors.red[200],
        child: Icon(Icons.add),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding:
                const EdgeInsets.only(top: 60, left: 30, right: 30, bottom: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Icon(
                    Icons.list,
                    size: 32,
                    color: Colors.red[200],
                  ),
                  radius: 30,
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  'ToDo',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 38,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  '${Provider.of<TaskData>(context).tasks.length} Tasks',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.only(
                  top: 10, left: 30, right: 30, bottom: 30),
              height: 300,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  )),
              child: TaskList(),
            ),
          )
        ],
      ),
    );
  }
}
