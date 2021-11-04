import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:online_shop/app/global_widgets/circular_image_from_asset.dart';
import 'package:online_shop/app/global_widgets/custom_divider.dart';
import 'package:online_shop/app/modules/login/views/login_form.dart';
import 'package:online_shop/app/modules/login/views/login_methods.dart';
import 'package:online_shop/app/utils/colors.dart';
import 'package:online_shop/app/utils/styles.dart';

import '../controllers/login_controller.dart';
import 'buils_sign_up.dart';

class LoginView extends GetView<LoginController> {
  LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(
            top: 32.0, left: 32.0, right: 32.0, bottom: 8.0),
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: CircularImageFromAsset(imagePath: "assets/logos/logo.png",
                radius: 40,
                size: 55,
                color: grey100,),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Login in to Bardeal",
                style: styleBlackBold18,
              ),
            ),
            const SignUp(),
            const LoginMethods(),
            const CustomDivider(),
            LoginForm(controller: controller,)
          ],
        ),
      ),
    );
  }
}