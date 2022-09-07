import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TaskModel {
  final String title;
  final String description;
  final String time;
  final Widget icon;

  TaskModel({
    required this.title,
    required this.description,
    required this.time,
    required this.icon,
  });
}

var taskList = <TaskModel>[
  TaskModel(
    title: 'Team Meeting',
    description: 'Discuss all question about new project',
    time: '10:00 AM',
    icon: CircleAvatar(
      radius: 40,
      backgroundColor: Get.theme.primaryColor.withOpacity(.5),
      child: Icon(
        Icons.dashboard_customize_sharp,
        size: 60,
        color: Colors.white,
      ),
    ),
  ),
  TaskModel(
    title: 'Call the stylist',
    description: 'Agree on evening look',
    time: '11:00 AM',
    icon: CircleAvatar(
        radius: 40,
        backgroundColor: Get.theme.primaryColor.withOpacity(.5),
        child: Icon(Icons.phone_forwarded, size: 60, color: Colors.white)),
  ),
  TaskModel(
    title: 'Check mails',
    description: 'Write to manager',
    time: '01:00 PM',
    icon: CircleAvatar(
        radius: 40,
        backgroundColor: Get.theme.primaryColor.withOpacity(.5),
        child: Icon(Icons.mail, size: 60, color: Colors.white)),
  ),
];
