import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../models/TaskModel.dart';

class TaskCard extends StatelessWidget {
  const TaskCard({
    Key? key,
    required this.task,
  }) : super(key: key);
  final TaskModel task;
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        margin: EdgeInsets.symmetric(vertical: 20, horizontal: 5),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
        ),
        padding: EdgeInsets.symmetric(horizontal: 25, vertical: 35),
        child: Row(
          children: [
              task.icon,
         SizedBox(width: 20),
            Expanded(
              child:
                  Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
                Text(
                  task.title,
                  textAlign: TextAlign.end,
                  style: TextStyle(
                    fontSize: 21,
                    fontWeight: FontWeight.w900,
                  ),
                ),
               SizedBox(width: 15),
                Text(
                  task.description,
                  textAlign: TextAlign.end,
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Get.theme.colorScheme.secondary,
                  ),
                ),
              ]),
            ),
          ],
        ),
      ),
      Positioned(
        bottom: 0,
        right: 0,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(12),
              bottomRight: Radius.circular(12),
            ),
            color: Get.theme.canvasColor,
          ),
          padding: EdgeInsets.all(10),
          child: Text(
            task.time,
            style: TextStyle(
                fontSize: 15, color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
      )
    ]);
  }
}
