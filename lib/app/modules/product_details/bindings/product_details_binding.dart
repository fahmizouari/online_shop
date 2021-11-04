import 'package:get/get.dart';
import 'package:online_shop/app/modules/home/controllers/home_controller.dart';

import '../controllers/product_details_controller.dart';

class ProductDetailsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ProductDetailsController>(
      () => ProductDetailsController(),
    );
  }
}
