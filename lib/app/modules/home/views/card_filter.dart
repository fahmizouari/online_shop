import 'package:flutter/material.dart';
import 'package:online_shop/app/global_widgets/rounded_container.dart';
import 'package:online_shop/app/utils/colors.dart';
import 'package:online_shop/app/utils/styles.dart';

class CardFiltre extends StatelessWidget {
  const CardFiltre({
    Key? key,
    required this.label,
    required this.isSelected,
    required this.onChangeFilter,
  }) : super(key: key);

  final String label;
  final bool isSelected;
  final void Function() onChangeFilter;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onChangeFilter,
      child: RoundedContainer(
          color: isSelected ? orange : grey100,
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
          borderRadius: 50,
          child: Text(
            label,
            style: isSelected ? styleWhite18 : stylegrey80018,
          )
      ),
    );
  }
}