// screens/task_list_screen.dart
import '../flutter/flutter/packages/flutter/lib/material.dart';
import '../model/todo_item.dart';
import '../widgets/task_widget.dart';

class TaskListScreen extends StatelessWidget {
  final List<TodoItem> tasks;
  final Function(TodoItem) onTaskToggle;
  final Function(TodoItem) onDeleteTask;

  TaskListScreen({
    required this.tasks,
    required this.onTaskToggle,
    required this.onDeleteTask,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TODO List'),
      ),
      body: ListView.builder(
        itemCount: tasks.length,
        itemBuilder: (context, index) {
          final todo = tasks[index];
          return TaskWidget(
            todo: todo,
            onToggle: () => onTaskToggle(todo),
            onDelete: () => onDeleteTask(todo),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Navigate to Add Task Screen
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
