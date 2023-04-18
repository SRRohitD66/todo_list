import 'package:flutter/foundation.dart';
import 'package:todo_list/models/task.dart';

class TaskData extends ChangeNotifier{
  List<Task> tasks = [
    Task(name: 'Buy milk', isDone: false),
    Task(name: 'Buy Egg', isDone: false),
    Task(name: 'Buy bread', isDone: false)
  ];
  int get taskCount{
    return tasks.length;
  }
  void addTask(String newTasktitle)
  {
    final task=Task(name: newTasktitle, isDone: false);
    tasks.add(task);
    notifyListeners();
  }
  void updateTask(Task task)
  {
    task.toggleDone();
    notifyListeners();

  }
  void delTask(Task task)
  {
    tasks.remove(task);
    notifyListeners();

  }
}