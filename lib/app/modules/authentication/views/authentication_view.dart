import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:online_shop/app/modules/home/views/home_view.dart';
import 'package:online_shop/app/modules/login/views/login_view.dart';
import 'package:online_shop/app/modules/splash/views/splash_view.dart';
import '../controllers/authentication_controller.dart';

class AuthenticationView extends GetView<AuthenticationController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() {
        if(controller.isWaiting()){
          return SplashView();
        }
        else{
          if (!controller.isAuth()) {
            return LoginView();
          }
          else{
            return HomeView();
          }
        }
      })
    );
  }
}
