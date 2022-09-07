import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../screens/AddScreen.dart';
import '../utils/AppAssets.dart';
import 'Buttons.dart';
import 'cornner.dart';

class HomeCard extends StatelessWidget {
  final controller;

  const HomeCard({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(30),
        ),
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(crossAxisAlignment: CrossAxisAlignment.start,
              children: [
            SizedBox(width: 30),
            Padding(
              padding: const EdgeInsets.only(top:30.0),
              child: Icon(Icons.sort_sharp, size: 30),
            ),
            SizedBox(width: 20),
            Padding(
              padding: const EdgeInsets.only(top:30.0),
              child: Image.asset(
                AppAssets.notification,
                width: 30,
              ),
            ),
            Spacer(),
            SizedBox(
              height: MediaQuery.of(context).size.width*.35,
              width: MediaQuery.of(context).size.width*.35,
              child: CustomPaint(
                size: Size(MediaQuery.of(context).size.width*.35,
                    (MediaQuery.of(context).size.width*.35 * 0.8562091503267973).toDouble()),
                painter: RPSCustomPainter(),
                child: Align(
                  alignment: Alignment(0.4, -0.4),
                  child:
                      Icon(Icons.account_circle, color: Colors.white,
                          size: 50),
                ),
              ),
            ),
          ]),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 0),
            child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
              Text(
                'My Task',
                style: TextStyle(
                  color: Colors.grey.shade800,
                  fontSize: 32,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Spacer(),
              InkWell(
                onTap: () => Get.to(() => AddScreen()),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Get.theme.primaryColor,
                  ),
                  width: 50,
                  height: 50,
                  child: Center(
                      child: Icon(
                    Icons.add,
                    size: 40,
                    color: Colors.white,
                  )),
                ),
              ),
            ]),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Row(children: [
              Text(
                'Today',
                style: TextStyle(
                  color: Colors.grey.shade700,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Spacer(),
              Text(
                'Monday, 1 June',
                style: TextStyle(
                  color: Get.theme.colorScheme.secondary,
                  fontSize: 12,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ]),
          ),
          Container(
            height: 60,
            margin: EdgeInsets.only(top: 20, bottom: 20),
            padding: EdgeInsets.only(left: 30),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 7,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(right: 15.0),
                  child: DayButton(
                    dayNumber: index + 1,
                    character:
                        controller.getWeekOfDaysFirstLettersByIndex(index),
                    isSelected: controller.selectedIndex == index,
                    onTap: () {
                      controller.setSelectedIndex(index);
                    },
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
