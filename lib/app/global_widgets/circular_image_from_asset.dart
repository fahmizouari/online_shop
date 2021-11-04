import 'package:flutter/material.dart';
import 'package:online_shop/app/utils/colors.dart';

class CircularImageFromAsset extends StatelessWidget {
  final double radius;
  final double size;
  final Color color;
  final String imagePath;
  const CircularImageFromAsset({Key? key, required this.size, required this.radius, required this.imagePath, this.color=white}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: radius,
      backgroundColor: color,
      child: Image.asset(
        imagePath,
        height: size,
        width: size,
      ),
    );
  }
}
