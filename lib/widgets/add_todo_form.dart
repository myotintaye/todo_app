import 'package:flutter/material.dart';

class AddTodoForm extends StatefulWidget {

  final Function(String textInput) onAddItem;

  AddTodoForm(this.onAddItem);

  @override
  _AddTodoFormState createState() => new _AddTodoFormState();
}

class _AddTodoFormState extends State<AddTodoForm> {
  final textController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return new Container(
        width: double.infinity,
        child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: new Row(mainAxisSize: MainAxisSize.min, children: <Widget>[
              Flexible(
                child: new Container(
                  child: new TextField(
                    controller: textController,
                    decoration: new InputDecoration(
                        contentPadding: const EdgeInsets.all(0.0),
                        border: InputBorder.none,
                        hintText: 'Add Todo Item'),
                  ),
                  decoration: new BoxDecoration(
                      color: Colors.white,
                      borderRadius: new BorderRadius.circular(30.0),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.deepPurple.shade200,
                            blurRadius: 2.0,
                            spreadRadius: 1.0)
                      ]),
                  padding: new EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 16.0),
                ),
              ),
              SizedBox(width: 15.0,),
              FloatingActionButton(child: Icon(Icons.add), onPressed: () {
                widget.onAddItem(textController.text);
                textController.clear();
              },),
            ])));
  }
}
