class ToDo {
  String? id;
  String? todoText;
  bool isDone;

  ToDo({
    required this.id,
    required this.todoText,
    this.isDone = false,
  });

  void updateText(String newText) {
    todoText = newText;
  }

  static List<ToDo> todoList() {
    return [
      ToDo(
        id: '01',
        todoText: 'Hello prajwal',
        isDone: true,
      ),
      ToDo(
        id: '02',
        todoText: 'Do exercise on daily basis',
        isDone: true,
      ),
      ToDo(
        id: '03',
        todoText: 'Go to GYM',
      ),
      ToDo(
        id: '04',
        todoText: 'Sleep ',
      ),
    ];
  }
}
