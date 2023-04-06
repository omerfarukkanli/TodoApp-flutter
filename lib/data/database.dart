import 'package:hive_flutter/hive_flutter.dart';

class TodoDataBase {
  List todoList = [];
  final _mybox = Hive.box('mybox');

  void createInitialData() {
    todoList = [
      ['make tutorial', false],
      ['do exercies', true]
    ];
  }

  void loadData() {
    todoList = _mybox.get('TODOLIST');
  }

  void updateDatabase() {
    _mybox.put('TODOIST', todoList);
  }
}
