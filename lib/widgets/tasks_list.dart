import 'package:flutter/material.dart';
import 'package:todo_webmobileapp_flutter/widgets/tasks_tile.dart';
import 'package:todo_webmobileapp_flutter/models/task.dart';

class TasksList extends StatefulWidget {
  @override
  _TasksListState createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  List<Task> tasks = [
    Task(name: "Comprar toddy"),
    Task(name: "Comprar suco"),
    Task(name: "Comprar danone"),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TasksTile(
          taskTitle: tasks[index].name,
          isChecked: tasks[index].isDone,
          checkboxCallback: (bool? checkboxState) {
            setState(
              () {
                tasks[index].toggleDone();
              },
            );
          },
        );
      },
      itemCount: tasks.length,
    );
  }
}
