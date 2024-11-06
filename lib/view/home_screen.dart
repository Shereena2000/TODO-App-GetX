import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo_app_getx/constant/const.dart';
import 'package:todo_app_getx/controller/todo_controller.dart';
import 'package:todo_app_getx/view/add_task_screen.dart';
import 'package:todo_app_getx/view/widget/todo_widget.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  TaskController controller = Get.put(TaskController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Get.to(AddTaskScreen());
          },
          child: const Icon(Icons.add),
        ),
        body: SafeArea(
            child: Obx(
          () => controller.tasklist.isEmpty
              ?const Center(
                  child: Text(
                    "No task found",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                )
              : ListView.builder(
                  itemCount: controller.tasklist.length,
                  itemBuilder: (context, index) {
                    return TodoWidget(
                      time: controller.tasklist[index].task,
                      dis: controller.tasklist[index].taskCreated,
                      press: () {
                        controller.deleteTask(controller.tasklist[index]);
                      },
                    );
                  }),
        )));
  }
}
