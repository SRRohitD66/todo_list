import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class TaskTile extends StatelessWidget {
  final bool isChecked ;
  final String tasktitle;
  final void Function(bool?)  checkboxcallback;
  final VoidCallback longPressCallBack;
  TaskTile({required this.isChecked,required this.tasktitle,required this.checkboxcallback,required this.longPressCallBack});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longPressCallBack,
      title: Text(
        tasktitle,
        style: TextStyle(
            decoration:
                isChecked ? TextDecoration.lineThrough : TextDecoration.none),
      ),
      trailing: Checkbox(

        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        checkColor: Colors.white,
        onChanged: checkboxcallback,
      )
    );
  }
}


