import 'package:flutter/material.dart';
import 'package:todo_app/models/todo_item.dart';

class TodoListItem extends StatelessWidget {
  final TodoItem todo;

  final Function() checkDone;

  TodoListItem(this.todo, this.checkDone);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(todo.title,
          style: todo.state == TodoState.Completed
              ? TextStyle(decoration: TextDecoration.lineThrough)
              : null),
      leading: Checkbox(
        tristate: false,
        value: todo.state == TodoState.Completed,
        onChanged: (_) {
          checkDone();
        },
      ),
    );
  }
}
