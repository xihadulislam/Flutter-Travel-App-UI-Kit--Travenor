import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/splash_controller.dart';

class SplashView extends GetView<SplashController> {
  const SplashView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        width: Get.width,
        height: Get.height,
        child: Center(),
      ),
    );
  }
}

class CustomWave extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var path = Path();
    var paint = Paint();

    path.moveTo(0, size.height * 0.84);
    path.quadraticBezierTo(size.width * 0.25, size.height * 0.77,
        size.width * 0.52, size.height * 0.84);
    // path.quadraticBezierTo(
    //     size.width * 0.74, size.height * 0.92, size.width, size.height * 0.84);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.close();
    paint.color = Colors.red;
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}
