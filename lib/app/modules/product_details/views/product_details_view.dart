import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import 'package:get/get.dart';
import 'package:online_shop/app/global_widgets/custom_button.dart';
import 'package:online_shop/app/global_widgets/image_with_buttons.dart';
import 'package:online_shop/app/global_widgets/rounded_container.dart';
import 'package:online_shop/app/utils/colors.dart';
import 'package:online_shop/app/utils/styles.dart';

import '../controllers/product_details_controller.dart';

class ProductDetailsView extends GetView<ProductDetailsController> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Hero(
              tag: controller.tag,
              child: Material(
                child: ClipRRect(
                  borderRadius: const BorderRadius.only(bottomRight: Radius.circular(32.0), bottomLeft: Radius.circular(32.0)),
                  child: ImageWithButtons(
                    image: controller.homeController.clickedProduct!.value.image,
                    onPressed: () => controller.homeController.onClickLike(name: controller.homeController.clickedProduct!.value.name),
                    like: controller.homeController.clickedProduct!.value.like,
                    topPositioned: 40,
                    leftRightPositioned: 24,
                    backFunction: controller.backFunction,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(controller.homeController.clickedProduct!.value.name, style: styleBlackBold28,),
                          Text(controller.homeController.clickedProduct!.value.subName, style: stylegrey800Bold16,),
                        ],
                      ),
                      Text("\$"+controller.homeController.clickedProduct!.value.price.toStringAsFixed(2), style: styleOrangeBold28,),
                    ],
                  ),
                  const SizedBox(height: 16,),
                  RatingBar(
                    initialRating: 3,
                    direction: Axis.horizontal,
                    allowHalfRating: true,
                    itemCount: 5,
                    itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
                    glowColor: Colors.amber,
                    unratedColor: white,
                    itemSize: 24,
                    ratingWidget: RatingWidget(
                      full: Image.asset('assets/images/star/star.png'),
                      half: Image.asset('assets/images/star/half-star.png'),
                      empty: Image.asset('assets/images/star/empty-star.png'),
                    ),
                    onRatingUpdate: (rating) {
                    },
                  ),

                  const SizedBox(height: 16,),
                  Text(controller.homeController.clickedProduct!.value.description, style: styleGrey900Size16,),
                  const SizedBox(height: 16,),
                  Row(
                    children: [
                      const RoundedContainer(
                          height: 60,
                          width: 60,
                          borderRadius: 50,
                          child: IconButton(
                              onPressed: null,
                              icon: Icon(Icons.local_grocery_store_rounded, color: orange,)
                          )
                      ),
                      const SizedBox(width: 32,),
                      Expanded(
                        child: CustomButton(
                          onPressed: () => {},
                          text: "Buy Now",
                        ),
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      )
    );
  }
}
