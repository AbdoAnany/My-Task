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

  void setCurrentDate(d) {
    currentDate = d;
    // update();
  } // controller.update();

  var selectedIndex = 0;
  void setIndex(int index) {
    selectedIndex = index;
    update();
  }
}
