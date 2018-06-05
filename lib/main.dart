import 'package:flutter/material.dart';
import 'package:todo_app/pages/todo.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ToDo',
      theme: new ThemeData(
        primarySwatch: Colors.deepPurple,
        primaryColor: Colors.deepPurple.shade300,
        accentColor: Colors.deepPurple.shade300
      ),
      home: new TodoPage()
    );
  }
}

