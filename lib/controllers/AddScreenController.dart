import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddScreenController extends GetxController {
  var categoryList = [
    'Development',
    'Researh',
    'Design',
    'Backend',
    'Business',
    'Marketing',
    'Finance',
  ];
  DateTime currentDate = DateTime.now();
  TimeOfDay startTime = TimeOfDay.now();
  TimeOfDay endTime = TimeOfDay.now();

  void setCurrentDate(d) {
    currentDate = d;
    update();
  } // c
  void setStartTime(d) {
    startTime = d;
    update();
  } // c
  void setEndTime(d) {
    endTime = d;
     update();
  } // controller.update();

  var selectedIndex = 0;
  void setIndex(int index) {
    selectedIndex = index;
    update();
  }
}
