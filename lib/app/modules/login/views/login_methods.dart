import 'package:flutter/material.dart';
import 'package:online_shop/app/global_widgets/circular_image_from_asset.dart';
import 'package:online_shop/app/utils/colors.dart';

class LoginMethods extends StatelessWidget {
  const LoginMethods({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: CircularImageFromAsset(imagePath: "assets/logos/facebook-logo.png", radius: 25, size: 20, color: blueFacebook,),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: CircularImageFromAsset(imagePath: "assets/logos/google-plus-logo.png", radius: 25, size: 25, color: orangeGmail,),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: CircularImageFromAsset(imagePath: "assets/logos/apple-logo.png", radius: 25, size: 27, color: blackApple,),
          ),
        ],
      ),
    );
  }
}