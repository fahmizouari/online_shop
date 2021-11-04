import 'package:flutter/material.dart';
import 'package:online_shop/app/utils/colors.dart';
import 'package:online_shop/app/utils/styles.dart';
class CustomInput extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final bool obscureText;
  final String label;
  final String? Function(String?)? validator;
  final Widget? prefixIcon;
  final OutlineInputBorder myInputBorder = const OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(20)),
      borderSide: BorderSide(
        color:grey100,
        width: 3,
      )
  );

  const CustomInput({
    Key? key,
    required this.controller,
    this.hintText="",
    this.obscureText=false,
    this.label="",
    this.validator,
    this.prefixIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if(label.isNotEmpty)
        Padding(
          padding: const EdgeInsets.only(bottom: 8.0),
          child: Text(
            label,
            style: styleBlackBold16,
          ),
        ),
        TextFormField(
          controller: controller,
          validator: validator,
          obscureText: obscureText,
          decoration: InputDecoration(
            border: myInputBorder,
            enabledBorder: myInputBorder,
            focusedBorder: myInputBorder,
            hintText: hintText,
            hintStyle: const TextStyle(
              color: grey800
            ),
            filled: true,
            fillColor: grey100,
            prefixIcon: prefixIcon,
          ),
          cursorColor: grey800,
        ),
      ],
    );
  }

}
