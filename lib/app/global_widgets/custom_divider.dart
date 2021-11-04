import 'package:flutter/material.dart';
import 'package:online_shop/app/utils/colors.dart';
import 'package:online_shop/app/utils/styles.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
        children: [
          Expanded(
            child: Container(
                margin: const EdgeInsets.only(left: 10.0, right: 15.0),
                child: const Divider(
                  color: grey800,
                  height: 50,
                )),
          ),
          const Text("Or", style: stylegrey800Bold16,),
          Expanded(
            child: Container(
                margin: const EdgeInsets.only(left: 15.0, right: 10.0),
                child: const Divider(
                  color: grey800,
                  height: 50,
                )),
          ),
        ]
    );
  }
}
