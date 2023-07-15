import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myshop/pages/intro/splash_screen.dart';

main() {
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
     home: SplashScreen(),
    textDirection: TextDirection.rtl,
      ));
}