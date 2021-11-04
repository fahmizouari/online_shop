import 'package:flutter/material.dart';
import 'package:online_shop/app/utils/colors.dart';

class RoundedContainer extends StatelessWidget {
  final double? height;
  final double? width;
  final double borderRadius;
  final Color color;
  final Widget child;
  final EdgeInsetsGeometry padding;
  const RoundedContainer({Key? key, required this.child, this.height, this.width, this.borderRadius= 20, this.color= grey100, this.padding=EdgeInsets.zero}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.all(Radius.circular(borderRadius))
      ),
      child: Padding(
        padding: padding,
        child: Center(child: child),
      ),
    );
  }
}
