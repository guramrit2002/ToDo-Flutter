import 'package:flutter/material.dart';
import 'package:flutter_demo/constants/color.dart';
import '../models/todo.dart';
class ToDoItem extends StatelessWidget {

  final ToDo todo;
  final onToDoChnaged;
  final onDeleteItem;
  const ToDoItem({Key? key, required this.todo , required this.onToDoChnaged,required this.onDeleteItem}): super(key:key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: ListTile(
        onTap: (){
          print('Clicked !!!!');
          onToDoChnaged(todo);
          print(todo.isDone);
        },
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        contentPadding: EdgeInsets.symmetric(horizontal: 20 , vertical: 5),
        tileColor: Colors.white,
        leading: Icon(
          Icons.check_box_outline_blank_rounded,
          color: tdBlue,
        ),
        title: Text(
          todo.todoText!,
          style: TextStyle(
          fontSize: 15,
          color: tdBlack,
          decoration: todo.isDone ? TextDecoration.lineThrough : TextDecoration.none,
        ),
        ),
        trailing: Container(
          height: 35,
          width: 35,
          decoration: BoxDecoration(
            color: tdRed,
            borderRadius: BorderRadius.circular(5)
          ),
          child: IconButton(
            color: Colors.white,
            onPressed: () {
              print('clicked delete !!!!!!');
              onDeleteItem(todo.id);
            },
            icon: Icon(Icons.delete),
            iconSize: 18,
          ),

        ),
      ),
    );
  }
}
