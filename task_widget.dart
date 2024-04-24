// widgets/task_widget.dart
import '../flutter/flutter/packages/flutter/lib/material.dart';
import '../model/todo_item.dart';

class TaskWidget extends StatelessWidget {
  final TodoItem todo;
  final Function() onToggle;
  final Function() onDelete;

  TaskWidget({
    required this.todo,
    required this.onToggle,
    required this.onDelete,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Checkbox(
        value: todo.isCompleted,
        onChanged: (_) => onToggle(),
      ),
      title: Text(todo.name),
      trailing: IconButton(
        icon: Icon(Icons.delete),
        onPressed: () => onDelete(),
      ),
    );
  }
}
