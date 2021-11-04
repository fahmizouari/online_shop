import 'package:flutter/material.dart';
import 'package:online_shop/app/utils/styles.dart';

class SignUp extends StatelessWidget {
  const SignUp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Text(
            "Don't have account? ",
            style: styleBlack16,
          ),
          Text(
            "Sign Up",
            style: styleOrangeBold16,
          )
        ],
      ),
    );
  }
}