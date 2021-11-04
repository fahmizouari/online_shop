import 'package:flutter/material.dart';
import 'package:online_shop/app/global_widgets/custom_button.dart';
import 'package:online_shop/app/global_widgets/custom_input.dart';
import 'package:online_shop/app/modules/login/controllers/login_controller.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    Key? key,
    required this.controller,
  }) : super(key: key);

  final LoginController controller;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: controller.loginFormKey,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CustomInput(label: "Email", controller: controller.emailController,validator: controller.emailValidator,),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CustomInput(label: "Password", controller: controller.passwordController, validator: controller.passwordValidator, obscureText: true,),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 16.0, right: 8.0, left: 8.0),
            child: CustomButton(
              onPressed: controller.loginWithEmail,
              text: "Login",
            ),
          ),
        ],
      ),
    );
  }
}
