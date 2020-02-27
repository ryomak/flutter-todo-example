import 'package:flutter/material.dart';
import 'package:flutter_todo_example/widgets/task_tile.dart';
import 'package:flutter_todo_example/model/task_data.dart';
import 'package:provider/provider.dart';

class TaskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child){
        return ListView.builder(
          itemBuilder: (context, index){
            final task = taskData.tasks[index];
            return TaskTitle(
                taskTitle: task.name,
                isChecked:  task.isDone,
                checkboxCallback:(_) {
                  taskData.updateTask(task);
                },
                longPressCallback: (){
                  taskData.deleteTask(task);
                },
            );
          },
          itemCount: taskData.taskCount,
        );
      },
    );
  }
}