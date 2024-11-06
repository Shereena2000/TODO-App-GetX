import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo_app_getx/model/todo.dart';

class TaskController extends GetxController {
  final _tasklist = <Task>[].obs;
  List<Task> get tasklist => _tasklist.value;
  TextEditingController? textEditingController;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    textEditingController = TextEditingController();
  }

  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
    textEditingController!.clear();
  }

  void addTask() {
    String text = textEditingController!.text;
    DateTime time = DateTime.now();
    _tasklist.add(
      Task(
        text,
        time.day.toString(),
      ),
    );
    textEditingController!.text=""; 
  }

  void deleteTask(Task task) {
    _tasklist.remove(task);
  }
}
