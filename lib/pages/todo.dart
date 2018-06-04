import 'package:flutter/material.dart';
import 'package:todo_app/models/todo_item.dart';
import 'package:todo_app/widgets/add_todo_form.dart';
import 'package:todo_app/widgets/todo_list_item.dart';

class TodoPage extends StatefulWidget {
  @override
  _TodoPageState createState() => new _TodoPageState();
}

class _TodoPageState extends State<TodoPage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  bool _isAddTodoOpen = false;

  //class variable - have to put final
  final _todos = [
    new TodoItem("Do Laundary"),
    new TodoItem("Buy Cooking Oil"),
    new TodoItem("Give G2 Test"),
    new TodoItem("Create Todo Apps"),
  ];

  @override
  Widget build(BuildContext context) {
    //
    return new Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: Text("Todo"),
      ),
      body: new Padding(
        padding: const EdgeInsets.only(top: 10.0),
        child: ListView.builder(
            itemCount: _todos.length,
            itemBuilder:(context,i ) => new TodoListItem(_todos[i])),
      ),
      floatingActionButton: _buildFAB(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        child: SizedBox(
          height: 45.0,
        ),
        color: Theme.of(context).accentColor,
        hasNotch: true,
      ),
    );
  }

  Widget _buildFAB() {
    if (_isAddTodoOpen) {
      return null;
    }

    return FloatingActionButton(
      child: Icon(Icons.add),
      backgroundColor: Colors.greenAccent,
      onPressed: () {
        setState(() {
          _isAddTodoOpen = true;
        });

        _scaffoldKey.currentState.showBottomSheet((context) {
          return new AddTodoForm();
        }).closed.whenComplete((){
          setState(() {
            _isAddTodoOpen = false;
          });
        });
      },
    );
  }
}
