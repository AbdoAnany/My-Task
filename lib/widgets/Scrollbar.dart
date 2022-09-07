import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyScrollPainter extends StatelessWidget {
  final controller;

  const MyScrollPainter({super.key, required this.controller});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20.0, right: 30),
      child: Obx(
        () => CustomPaint(
          willChange: true,
          painter: ScrollPainter(
            progress: controller.progress.value,
            barHeight: 30,
          ),
          child: Container(
              width: 2,
              height: Get.height,
              child: Container(
                height: controller.progress.value,
              )),
        ),
      ),
    );
  }
}

class ScrollPainter extends CustomPainter {
  final double progress;

  /// size.height * 0.2
  final double? barHeight;
  const ScrollPainter({required this.progress, this.barHeight});

  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()
      ..style = PaintingStyle.fill
      ..isAntiAlias = true
      ..color = Colors.black;
    var paint2 = Paint()
      ..style = PaintingStyle.fill
      ..isAntiAlias = true
      ..color = Colors.white;

    var bottomRight = Offset(size.width, size.height);
    var topLeft = Offset(0, 0);

    var scrollBarHeight = barHeight ?? size.height * 0.2;
    var center = Offset(
        size.width / 2,
        min(max(size.height * progress, scrollBarHeight / 2),
            size.height - (scrollBarHeight / 2)));
    canvas.drawRect(Rect.fromPoints(topLeft, bottomRight), paint);
    canvas.drawRect(
        Rect.fromCenter(
            center: center, width: size.width, height: scrollBarHeight),
        paint2);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
