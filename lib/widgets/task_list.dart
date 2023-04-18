import 'package:flutter/material.dart';
import 'task_tile.dart';
import 'package:todo_list/models/task.dart';
import 'package:todo_list/models/task_data.dart';
import 'package:provider/provider.dart';
class TaskList extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context,taskData,child){
        return ListView.builder(
          itemBuilder: (context, index) {
            return TaskTile(
                isChecked: taskData.tasks[index].isDone,
                tasktitle: taskData.tasks[index].name,

                checkboxcallback:(checkboxstate){
                  taskData.updateTask(taskData.tasks[index]);
                },
                longPressCallBack: (){
                  taskData.delTask(taskData.tasks[index]);
            },
            );
          },
          itemCount: taskData.taskCount,
        );
      },

    );
  }
}
