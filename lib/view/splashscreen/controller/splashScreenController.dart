import 'package:get/get.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_getx_widget.dart';
import 'package:pos_system/view/Authentication/login.dart';

class SplashScreenController extends GetxController{
  static SplashScreenController get find => Get.find();

  RxBool animate = false.obs;

  Future startAnimated() async {
    await Future.delayed(Duration(milliseconds: 1800));
    animate.value = true;
    await Future.delayed(Duration(milliseconds: 3000));
    Get.off(Login());
  }

}