import 'package:flutter/material.dart';
import 'package:todo_webmobileapp_flutter/widgets/tasks_tile.dart';
import 'package:provider/provider.dart';
import 'package:todo_webmobileapp_flutter/models/task_data.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            final task = taskData.tasks[index];
            return TasksTile(
                taskTitle: task.name,
                isChecked: task.isDone,
                checkboxCallback: (bool? checkboxState) {
                  taskData.updateTask(task);
                },
                longPressCallback: () {
                  taskData.removeTask(task);
                });
          },
          itemCount: taskData.taskCount,
        );
      },
    );
  }
}
