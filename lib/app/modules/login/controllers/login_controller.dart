import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:online_shop/app/routes/app_pages.dart';

class LoginController extends GetxController {
  final emailController= TextEditingController(text: "abc");
  final passwordController= TextEditingController(text: "123456");
  final GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();

  String?  emailValidator(String? value){
    if(value!.trim().isEmpty) {
      return "email must not be empty";
    }
    return null;
  }
  String?  passwordValidator(String? value){
    if(value!.trim().isEmpty) {
      return "password must not be empty";
    }
    return null;
  }

  void loginWithEmail() {
    if(loginFormKey.currentState!.validate()){
      Get.offAndToNamed(Routes.HOME);
    }
  }
}
