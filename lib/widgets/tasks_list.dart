import 'package:flutter/material.dart';
import 'package:todo_webmobileapp_flutter/widgets/tasks_tile.dart';
import 'package:todo_webmobileapp_flutter/models/task.dart';

class TasksList extends StatefulWidget {
  final List<Task> tasks;
  TasksList({required this.tasks});

  @override
  _TasksListState createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TasksTile(
          taskTitle: widget.tasks[index].name,
          isChecked: widget.tasks[index].isDone,
          checkboxCallback: (bool? checkboxState) {
            setState(
              () {
                widget.tasks[index].toggleDone();
              },
            );
          },
        );
      },
      itemCount: widget.tasks.length,
    );
  }
}
