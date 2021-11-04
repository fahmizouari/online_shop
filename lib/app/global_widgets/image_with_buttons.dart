import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:online_shop/app/global_widgets/rounded_container.dart';
import 'package:online_shop/app/utils/colors.dart';

class ImageWithButtons extends StatelessWidget {
  final String image;
  final RxBool like;
  final double? width;
  final double? height;
  final double topPositioned;
  final double leftRightPositioned;
  final void Function () onPressed;
  final void Function()? backFunction;

  const ImageWithButtons({
    Key? key,
    required  this.image,
    this.width,
    this.height,
    required  this.like,
    required  this.onPressed,
    this.topPositioned= 12,
    this.leftRightPositioned= 12,
    this.backFunction,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
            image,
            width: width,
            height: height,
            fit:BoxFit.cover
        ),
        if(backFunction != null)
        Positioned(
          top: topPositioned,
          left: leftRightPositioned,
          child: RoundedContainer(
            height: 30,
            width: 30,
            borderRadius: 30,
            color: white,
            child: IconButton(
                padding: EdgeInsets.zero,
                icon: const Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: EdgeInsets.only(left: 3),
                    child: Icon(Icons.arrow_back_ios, color: black, size: 14,),
                  ),
                ),
                onPressed: backFunction
            ),
          ),
        ),
        Positioned(
          top: topPositioned,
          right: leftRightPositioned,
          child: RoundedContainer(
            height: 30,
            width: 30,
            borderRadius: 30,
            color: white,
            child: IconButton(
                padding: EdgeInsets.zero,
                icon: Center(
                  child: Obx(() {return Icon(Icons.favorite, color: like.value ? Colors.red : grey800, size: 18,);}),
                ),
                onPressed: onPressed
            ),
          ),
        )
      ],
    );
  }
}
