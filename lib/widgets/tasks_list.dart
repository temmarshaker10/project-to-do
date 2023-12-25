// ignore: unused_import
import 'package:flutter/material.dart';

import 'package:to_do/widgets/task_list.dart';
import 'package:provider/provider.dart';
import 'package:to_do/models/task_data.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskdata, child) {
        return ListView.builder(
          itemCount: taskdata.tasks.length,
          itemBuilder: (context, index) {
            return TaskTile(
              isChecked: taskdata.tasks[index].isDone,
              taskTitle: taskdata.tasks[index].name,
              checkboxChange: (newvalue) {
                taskdata.updateTask(taskdata.tasks[index]);
              },
              ListTileDelete: () {
                taskdata.deleteTask(taskdata.tasks[index]);
              },
            );
          },
        );
      },
    );
  }
}
