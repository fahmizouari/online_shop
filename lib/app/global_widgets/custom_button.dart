import 'package:flutter/material.dart';
import 'package:online_shop/app/utils/colors.dart';
import 'package:online_shop/app/utils/styles.dart';
class CustomButton extends StatelessWidget {
  final Function onPressed;
  final String text;
  CustomButton({
    Key? key,
    required this.onPressed,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 60,
      child: ElevatedButton(
        child: Text(
          text,
          style: styleWhite18,
        ),
        onPressed: () => onPressed.call(),
        style: ElevatedButton.styleFrom(
          primary: orange,
          onPrimary: white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(26.0),
          ),
        ),
      ),
    );
  }

}
