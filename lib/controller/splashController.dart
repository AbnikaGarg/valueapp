import 'dart:async';
import 'package:get/get.dart';
import 'package:valueapp/view/home/bottom_bar.dart';
import 'package:valueapp/view/splash/on_board_screen.dart';
import '../components/shared_pref.dart';
import '../view/splash/splash.dart';

class SplashController extends GetxController {
  SplashController();
  final image = "assets/images/logo.png";

  @override
  void onReady() {
    super.onReady();

    Timer(const Duration(seconds: 3), () {
     if (PreferenceUtils.isLoggedIn()) {
       Get.offAll(DashboardScreen());
     } else {
      Get.offAll(OnBoardScreen());
       //Get.offAllNamed(Routes.home);
     }
    });
  }
}
