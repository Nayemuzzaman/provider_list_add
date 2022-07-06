import 'package:flutter/material.dart';
import 'package:flutter_provider_list/models/taskmodel.dart';

//todoModel
class ListShowModel extends ChangeNotifier {
  List<TaskModel> taskList = [];

  addTaskInList() {

    TaskModel taskModel =
        TaskModel("title ${taskList.length}", "No value is here ${taskList.length}");
    taskList.add(taskModel);
    notifyListeners();
  }
}
