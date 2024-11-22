import 'package:get/get.dart';

import '../controller/authController.dart';
import '../controller/homepageController.dart';
import '../controller/splashController.dart';

class HomeBindings extends Bindings {
  @override
  void dependencies() async {
    //common controller
   
   //  Get.lazyPut<HomepageController>(() => HomepageController());
  }
}
