import 'package:flutter/material.dart';
import 'package:flutter_todo_example/widgets/task_tile.dart';

class TaskList extends StatelessWidget {
  const TaskList({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        TaskTitle()
      ],
    );
  }
}