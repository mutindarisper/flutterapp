import 'package:hive_flutter/hive_flutter.dart';

class ToDoDatabase {
  List toDoList = [];
  final myBox = Hive.box('mybox');

  //user opening app 1st time

  void createInitialData() {
    toDoList = [
      ["Go Gym", true],
      ["Go Swimming", false],
    ];
  }

  //load data from the database
  void loadData() {
    toDoList = myBox.get("TODOLIST");
  }

  void updateDataBase() {
    myBox.put("TODOLIST", toDoList);
  }
}
