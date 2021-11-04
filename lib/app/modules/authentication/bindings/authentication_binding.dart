import 'package:get/get.dart';
import 'package:online_shop/app/modules/home/controllers/home_controller.dart';
import 'package:online_shop/app/modules/login/controllers/login_controller.dart';

import '../controllers/authentication_controller.dart';

class AuthenticationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AuthenticationController>(
      () => AuthenticationController(),
    );
    Get.lazyPut<LoginController>(
          () => LoginController(),
    );
    Get.lazyPut<HomeController>(
          () => HomeController(),
    );
  }
}
