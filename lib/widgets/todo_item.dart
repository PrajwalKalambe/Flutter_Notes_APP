import 'package:flutter/material.dart';
import 'package:notes_app/constants/colors.dart';
import 'package:notes_app/model/todo.dart';

class TodoItem extends StatelessWidget {
  final ToDo todo;
  final onToDoChanged;
  final onDeleteItem;
  final onEditItem;

  const TodoItem({
    Key? key,
    required this.todo,
    required this.onToDoChanged,
    required this.onDeleteItem,
    required this.onEditItem,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: ListTile(
        onTap: () {
          onToDoChanged(todo);
        },
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        tileColor: Colors.white,
        contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        leading: Icon(
            todo.isDone ? Icons.check_box : Icons.check_box_outline_blank,
            color: tdBlue),
        title: Text(
          todo.todoText!,
          style: TextStyle(
            fontSize: 16,
            color: tdBlack,
            decoration: todo.isDone ? TextDecoration.lineThrough : null,
          ),
        ),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              height: 35,
              width: 35,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(5),
              ),
              child: IconButton(
                color: Colors.white,
                iconSize: 18,
                icon: Icon(Icons.edit),
                onPressed: () {
                  onEditItem(todo);
                },
              ),
            ),
            SizedBox(width: 10),
            Container(
              height: 35,
              width: 35,
              decoration: BoxDecoration(
                color: tdRed,
                borderRadius: BorderRadius.circular(5),
              ),
              child: IconButton(
                color: Colors.white,
                iconSize: 18,
                icon: Icon(Icons.delete),
                onPressed: () {
                  onDeleteItem(todo.id);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
