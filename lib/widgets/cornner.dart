import 'dart:ui' as ui;
import 'dart:ui';

import 'package:flutter/material.dart';

//Add this CustomPaint widget to the Widget Tree


//Copy this CustomPainter code to the Bottom of the File
class RPSCustomPainter extends CustomPainter {
    @override
    void paint(Canvas canvas, Size size) {
            
Path path_0 = Path();
    path_0.moveTo(0,0);
    path_0.lineTo(0,size.height*0.003816794);
    path_0.cubicTo(size.width*0.03465490,size.height*0.005554885,size.width*0.06915588,size.height*0.01379989,size.width*0.1013072,size.height*0.02902351);
    path_0.cubicTo(size.width*0.1834526,size.height*0.06791908,size.width*0.2444059,size.height*0.1583065,size.width*0.2605856,size.height*0.2595420);
    path_0.cubicTo(size.width*0.2688719,size.height*0.3113889,size.width*0.2609418,size.height*0.3639050,size.width*0.2652608,size.height*0.4160305);
    path_0.cubicTo(size.width*0.2717608,size.height*0.4944809,size.width*0.3048984,size.height*0.5696947,size.width*0.3562092,size.height*0.6209924);
    path_0.cubicTo(size.width*0.4960294,size.height*0.7607710,size.width*0.6908595,size.height*0.6364695,size.width*0.8464052,size.height*0.7225954);
    path_0.cubicTo(size.width*0.9377451,size.height*0.7731718,size.width*0.9967320,size.height*0.8828282,size.width*0.9967320,size.height);
    path_0.lineTo(size.width,size.height);
    path_0.lineTo(size.width,0);
    path_0.lineTo(0,0);
    path_0.close();

Paint paint_0_fill = Paint()..style=PaintingStyle.fill;
paint_0_fill.color = Color(0xff439be1).withOpacity(1.0);
canvas.drawPath(path_0,paint_0_fill);

Path path_1 = Path();
    path_1.moveTo(0,size.height*0.003816794);
    path_1.lineTo(0,size.height);
    path_1.lineTo(size.width*0.9967320,size.height);
    path_1.cubicTo(size.width*0.9967320,size.height*0.8836641,size.width*0.9432026,size.height*0.7771718,size.width*0.8529412,size.height*0.7244618);
    path_1.cubicTo(size.width*0.6982059,size.height*0.6340992,size.width*0.5044869,size.height*0.7599313,size.width*0.3627451,size.height*0.6241794);
    path_1.cubicTo(size.width*0.3081278,size.height*0.5718702,size.width*0.2720699,size.height*0.4943969,size.width*0.2652608,size.height*0.4122137);
    path_1.cubicTo(size.width*0.2608317,size.height*0.3587603,size.width*0.2691186,size.height*0.3050145,size.width*0.2599703,size.height*0.2519084);
    path_1.cubicTo(size.width*0.2424000,size.height*0.1499122,size.width*0.1812667,size.height*0.06362290,size.width*0.09803922,size.height*0.02599603);
    path_1.cubicTo(size.width*0.06715261,size.height*0.01203244,size.width*0.03310654,size.height*0.004615038,0,size.height*0.003816794);
    path_1.close();

Paint paint_1_fill = Paint()..style=PaintingStyle.fill;
paint_1_fill.color = Color(0xffffffff).withOpacity(1.0);
canvas.drawPath(path_1,paint_1_fill);

}

@override
bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
}
}