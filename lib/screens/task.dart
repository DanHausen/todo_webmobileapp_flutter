import 'package:flutter/material.dart';

class TasksScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      body: Container(
        child: Padding(
          padding:
              const EdgeInsets.only(top: 60, left: 30, right: 30, bottom: 30),
          child: Column(
            children: [
              CircleAvatar(child: Icon(Icons.list, color: Colors.white)),
              Text("To-do App"),
            ],
          ),
        ),
      ),
    );
  }
}
