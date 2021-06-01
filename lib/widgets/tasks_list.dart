import 'package:flutter/material.dart';
import 'package:todo_webmobileapp_flutter/widgets/tasks_tile.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        SizedBox(height: 20),
        TasksTile(),
      ],
    );
  }
}
