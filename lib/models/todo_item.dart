enum TodoState {
  Pending,
  Completed
}

class TodoItem {
  final String title;
  final TodoState state = TodoState.Pending;


  TodoItem(this.title);

}