// ignore: unused_import
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:to_do/models/task_data.dart';

class AddTasks extends StatelessWidget {
  final Function addTaskCallBack;
  AddTasks(this.addTaskCallBack);

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    String? newTaskTitle;
    return Container(
      padding: EdgeInsets.all(30),
      child: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
        Text(
          "Add Task",
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 30,
              color: Colors.indigo[400],
              fontWeight: FontWeight.bold),
        ),
        TextField(
          autofocus: true,
          textAlign: TextAlign.center,
          onChanged: (newText) {
            newTaskTitle = newText;
          },
        ),
        SizedBox(
          height: 30,
        ),
        TextButton(
          onPressed: () {
            Provider.of<TaskData>(context, listen: false)
                .addTask(newTaskTitle!);
            Navigator.pop(context);
          },
          child: Text("Add"),
          style: TextButton.styleFrom(
              backgroundColor: Colors.teal[400], primary: Colors.white),
        )
      ]),
    );
  }
}
