import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart' as intl;
import '../controllers/AddScreenController.dart';
import '../utils/AppAssets.dart';
import '../widgets/FormElements.dart';
import '../widgets/buttons.dart';

class AddScreen extends StatelessWidget {
  const AddScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AddScreenController>(
      init: AddScreenController(),
      builder: (controller) => Scaffold(
        backgroundColor: Colors.white,
        body: Column(children: [
          SizedBox(
            height: 30,
          ),
          Row(children: [
            SizedBox(
              width: 10,
            ),
            IconButton(
              onPressed: Get.back,
              icon: Icon(Icons.arrow_back_ios, size: 30),
            ),
            Spacer(),
            Icon(Icons.sort, size: 30, textDirection: TextDirection.rtl),
            SizedBox(
              width: 20,
            ),
          ]),
          SizedBox(
            height: 10,
          ),
          Row(children: [
            SizedBox(
              width: 30,
            ),
            Text(
              'Create New Task',
              style: TextStyle(
                color: Colors.black,
                fontSize: 27,
                fontWeight: FontWeight.w700,
              ),
            ),
            Spacer(),
            Image.asset(
              AppAssets.note,
              height: 40,
            ),
            SizedBox(
              width: 30,
            ),
          ]),
          Expanded(
              child: ListView(
            padding: EdgeInsets.zero,
            children: [
              SizedBox(
                height: 25,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: AppTextField(
                  label: 'Task Name',
                  value: 'Team Meeting',
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: Row(
                  children: [
                    Text(
                      'Select Category',
                      style: TextStyle(
                        fontSize: 16,
                        color: Get.theme.primaryColor,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Spacer(),
                    Text(
                      'See All',
                      style: TextStyle(
                        fontSize: 13,
                        color: Get.theme.primaryColor,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Container(
                height: 32,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemCount: controller.categoryList.length,
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  separatorBuilder: (context, index) => SizedBox(
                    width: 15,
                  ),
                  itemBuilder: (context, index) => CategoryButton(
                    label: controller.categoryList[index],
                    isSelected: controller.selectedIndex == index,
                    onTap: () => controller.setIndex(index),
                  ),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: Row(children: [
                  Expanded(
                    flex: 20,
                    child: AppTextField(
                      label: 'Date',
                      value: intl.DateFormat.yMMMd()
                          .format(controller.currentDate),
                    ),
                  ),
                  Spacer(flex: 10),
                  Container(
                      width: 50,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Get.theme.primaryColor,
                      ),
                      alignment: Alignment.center,
                      child: IconButton(
                        icon: Icon(
                          Icons.calendar_today,
                          color: Colors.white,
                        ),
                        onPressed: () async {
                        var a= (await showDatePicker(
                            firstDate: DateTime(2000),

                            initialDate: DateTime.now(),

                            lastDate: DateTime(2023), context: context,
                          ))!;
                        controller.setCurrentDate(a);
                        },
                      )),
                ]),
              ),
              SizedBox(
                height: 25,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: Row(children: [
                  Expanded(
                    child: AppTextField(
                      label: 'Start Time',
                      value: controller.startTime.format(context),
                      suffix: IconButton(
                        icon: Icon(Icons.keyboard_arrow_down_rounded,
                          color: Get.theme.primaryColor, size: 30,),
                        onPressed: ()async{
                          var a= (await showTimePicker(


                              initialTime: TimeOfDay.now(),

                              context: context,
                          ))!;
                          controller.setStartTime(a);

                        },
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: AppTextField(
                      label: 'End Time',
                      value: controller.endTime.format(context),
                      suffix: IconButton(
                        icon: Icon(Icons.keyboard_arrow_down_rounded,
                          color: Get.theme.primaryColor, size: 30,),
    onPressed: ()async{
      var a= (await showTimePicker(


          initialTime:controller.startTime,

   context: context,
      ))!;
      controller.setStartTime(a);

    },
                      ),

                  ),)
                ]),
              ),
              SizedBox(
                height: 25,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: AppTextField(
                  label: 'Describtion',
                  value: 'Discuss all question about project',
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Center(
                child: AppButton(
                  label: 'Create Task',
                  onTap: () =>
                      Get.snackbar('Success', 'Task Created Successfully'),
                ),
              ),
              SizedBox(
                height: 25,
              ),
            ],
          )),
        ]),
      ),
    );
  }
}
