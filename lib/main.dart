import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_list/models/task_data.dart';
import 'screens/task_screen.dart';
import 'package:todo_list/models/task_data.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider
      (
      create: (context)=>TaskData(),
        child: MaterialApp(
        home: TaskScreen(),
      ),
    );
  }
}

