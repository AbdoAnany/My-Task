import 'package:flutter/material.dart';

import '../models/TaskModel.dart';
import 'TaskCard.dart';

class TaskList extends StatelessWidget {
  final controller;

  const TaskList({super.key, required this.controller});
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: taskList.length,
        controller: controller.scrollController,
        padding: EdgeInsets.only(bottom: 30, right: 20),
        itemBuilder: (context, index) {
          return TaskCard(task: taskList[index]);
        },
      ),
    );
  }
}
