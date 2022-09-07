import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/HomeScreenController.dart';
import '../widgets/HomeCard.dart';
import '../widgets/Scrollbar.dart';
import '../widgets/TaskList.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeScreenController>(
      init: HomeScreenController(),
      builder: (controller) => SafeArea(
        child: Scaffold(
          backgroundColor: Get.theme.primaryColor,
          body: Column(
            children: [
              HomeCard(controller: controller),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color: Get.theme.primaryColor,
                    borderRadius:
                        BorderRadius.only(topRight: Radius.circular(30)),
                  ),
                  padding: EdgeInsets.only(
                    top: 30,
                    left: 30,
                  ),
                  child: Row(children: [
                    MyScrollPainter(controller: controller),
                    TaskList(
                      controller: controller,
                    )
                  ]),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
