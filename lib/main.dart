import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:protifolio/src/home/page.dart';

void main() {
  runApp(GetMaterialApp(
    home: const HomePage(),
    scrollBehavior: const MaterialScrollBehavior().copyWith(
      dragDevices: {
        PointerDeviceKind.mouse,
        PointerDeviceKind.touch,
        PointerDeviceKind.stylus,
        PointerDeviceKind.unknown
      },
    ),
    debugShowCheckedModeBanner: false,
  ));
}
