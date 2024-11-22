import 'package:get/get.dart';
import '../controller/authController.dart';
import '../controller/splashController.dart';

class IntialBindings extends Bindings {
  @override
  void dependencies() async {
    //common controller
    Get.lazyPut<SplashController>(() => SplashController());
    Get.lazyPut<AuthController>(() => AuthController());
  }
}
