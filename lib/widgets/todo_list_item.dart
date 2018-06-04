import 'package:flutter/material.dart';
import 'package:todo_app/models/todo_item.dart';

class TodoListItem extends StatelessWidget {
  final TodoItem todo;

  TodoListItem(this.todo);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(todo.title),
      leading: Checkbox(
        tristate: false,
        value: todo.state == TodoState.Completed,
        onChanged: (_) {},
      ),
    );
  }
}