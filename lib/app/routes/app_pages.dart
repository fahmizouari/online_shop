import 'package:get/get.dart';

import 'package:online_shop/app/modules/authentication/bindings/authentication_binding.dart';
import 'package:online_shop/app/modules/authentication/views/authentication_view.dart';
import 'package:online_shop/app/modules/home/bindings/home_binding.dart';
import 'package:online_shop/app/modules/home/views/home_view.dart';
import 'package:online_shop/app/modules/login/bindings/login_binding.dart';
import 'package:online_shop/app/modules/login/views/login_view.dart';
import 'package:online_shop/app/modules/product_details/bindings/product_details_binding.dart';
import 'package:online_shop/app/modules/product_details/views/product_details_view.dart';
import 'package:online_shop/app/modules/splash/bindings/splash_binding.dart';
import 'package:online_shop/app/modules/splash/views/splash_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.AUTHENTICATION;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.SPLASH,
      page: () => SplashView(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: _Paths.AUTHENTICATION,
      page: () => AuthenticationView(),
      binding: AuthenticationBinding(),
    ),
    GetPage(
      name: _Paths.PRODUCT_DETAILS,
      page: () => ProductDetailsView(),
      binding: ProductDetailsBinding(),
    ),
  ];

  static GetPage findPage(String path) {
    return routes.firstWhere((element) => element.path == path);
  }
}
