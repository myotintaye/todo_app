enum TodoState { Pending, Completed }

class TodoItem {
  final String title;
  final TodoState state;

  TodoItem(this.title, [this.state = TodoState.Pending]);
}
