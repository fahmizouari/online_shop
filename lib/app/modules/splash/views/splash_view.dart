import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:online_shop/app/global_widgets/circular_image_from_asset.dart';
import 'package:online_shop/app/utils/colors.dart';
import 'package:online_shop/app/utils/styles.dart';

import '../controllers/splash_controller.dart';

class SplashView extends GetView<SplashController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: orange,
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children:  const [
              Text("Bardeal", style: styleWhiteBold30,),
              SizedBox(
                height: 16,
              ),
              CircularImageFromAsset(imagePath: "assets/logos/logo.png", radius: 50, size: 80,)
            ],
          ),
        ),
      ),
    );
  }
}
