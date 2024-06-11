import 'package:hive/hive.dart';

class ToDoDataBase {
  List toDoList = [];

  final Box _mybox = Hive.box("mybox");

  void createInitialData() {
    toDoList = [
      ["Make Tutorial", false],
      ["Do Exercise", false],
    ];
    updateDataBase();
  }

  void loadData() {
    toDoList = _mybox.get("TODOLIST", defaultValue: []);
  }

  void updateDataBase() {
    _mybox.put("TODOLIST", toDoList);
  }
}
