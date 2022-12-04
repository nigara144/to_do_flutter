import 'package:flutter/foundation.dart';
import 'package:todo_flutter/task.dart';

class TaskData extends ChangeNotifier {
  List<Task> tasks = [
    Task(name: 'buy milk', isDone: false),
    Task(name: 'buy bananas', isDone: false),
    Task(name: 'buy fruit', isDone: false),
  ];

  void addTask(String newTaskTile) {
    final task = Task(name: newTaskTile, isDone: false);
    tasks.add(task);
    notifyListeners();
  }

  void updateTask(Task task) {
    task.toggleDone();
    notifyListeners();
  }

  void deleteTask(Task task) {
    tasks.remove(task);
    notifyListeners();
  }
}