// model/todo_item.dart
class TodoItem {
  final String id;
  final String name;
  bool isCompleted;

  TodoItem({required this.id, required this.name, this.isCompleted = false});
}
