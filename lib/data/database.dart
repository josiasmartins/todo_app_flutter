import 'package:hive_flutter/hive_flutter.dart';

class TodoDataBase {
  List toDoList = [];

  // reference our box
  final _myBox = Hive.box("myBox");

  // run this method if this the 1st time opening this app
  void createInitialData() {
    toDoList = [
      ["Make tutorial", false],
      ["Do Exercise", false]
    ];
  }

  // load the data from database
  void loadData() {
    toDoList = _myBox.get("TODOLIST");
  }

  // update the data from database
  void updateDataBase() {
    _myBox.put("TODOLIST", toDoList);
  }
}
