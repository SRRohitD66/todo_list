import 'package:flutter/material.dart';
import 'package:todo_list/widgets/task_tile.dart';
import 'package:todo_list/models/task.dart';
import 'package:provider/provider.dart';
import 'package:todo_list/models/task_data.dart';


class AddTaskScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    late String newTasktitile;

    return Container(
      color: Color(0xFF757575),
      child: Container(
        padding: EdgeInsets.only(left: 20, right: 20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10), topRight: Radius.circular(10)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 20),
              child: Text(
                'Add TasK',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.blue, fontSize: 40),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              onChanged:(newTask) {
                newTasktitile=newTask;
              } ,
            ),
            SizedBox(
              height: 10,
            ),
            TextButton(
                onPressed:(){
                 final task=Task(name: newTasktitile, isDone: false);
                 Provider.of<TaskData>(context,listen: false).addTask(newTasktitile);
                 Navigator.pop(context);
                } ,
                style: TextButton.styleFrom(
                  backgroundColor: Colors.blueAccent,
                ),
                child: Text(
                  'Add',
                  style: TextStyle(color: Colors.white),
                ))
          ],
        ),
      ),
    );
  }
}
