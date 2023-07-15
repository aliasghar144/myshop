import 'package:get/get.dart';
import 'package:myshop/pages/home_screen.dart';

class SplashController extends GetxController{
  @override
  void onInit() {
    super.onInit();
    Future.delayed(const Duration(milliseconds: 800),() {
      Future.delayed(const Duration(seconds: 1),() {
        Future.delayed(const Duration(seconds: 2),() {
          Get.to(HomeScreen(),transition: Transition.fadeIn);
        });
      });
    },);
  }
  
}