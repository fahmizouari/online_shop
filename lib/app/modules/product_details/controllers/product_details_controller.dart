import 'package:get/get.dart';
import 'package:online_shop/app/modules/home/controllers/home_controller.dart';

class ProductDetailsController extends GetxController {
  HomeController homeController =Get.put(HomeController());
  String tag= Get.arguments.first["tag"];

  void backFunction(){
    Get.back();
  }
}
