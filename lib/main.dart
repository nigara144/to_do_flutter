import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_flutter/task.dart';
import 'package:todo_flutter/task_data.dart';
import 'task_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {



  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      // create: (BuildContext context) {
      //
      // },
      create: (context) => TaskData(),
      child: MaterialApp(
        home: TaskScreen(),
      ),
    );
  }
}
