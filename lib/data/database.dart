import 'package:hive_flutter/hive_flutter.dart';

class ToDoDatabase {
  List todoList = [];

  // reference the hive box
  final _myBox = Hive.box('mybox');

  // run this if this is the first time ever opening this app
  void createInitialData() {
    todoList = [
      ["Make breakfast", false],
      ["Code a new app", false],
    ];
  }

  // load the data from the database
  void loadData() {
    todoList = _myBox.get("TODOLIST");
  }

  // update the database
  void updateDatase() {
    _myBox.put("TODOLIST", todoList);
  }
}
