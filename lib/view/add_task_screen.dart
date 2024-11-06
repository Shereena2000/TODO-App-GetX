import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo_app_getx/controller/todo_controller.dart';

class AddTaskScreen extends StatelessWidget {
   AddTaskScreen(
      {super.key, });
  final TaskController controller = Get.find<TaskController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: Icon(Icons.arrow_back_ios)),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Spacer(
                flex: 3,
              ),
              Text(
                "Add New Task",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              ),
              TextField(
                controller: controller.textEditingController,
                decoration: InputDecoration(
                  hintText: "Add discription",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(21),
                  ),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              TextButton(onPressed: () {
                controller.addTask();
                Get.back();
              }, child: Text("Add Tak")),
              Spacer(
                flex: 3,
              )
            ],
          ),
        ),
      ),
    );
  }
}
