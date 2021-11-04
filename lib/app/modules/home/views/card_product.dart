import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:online_shop/app/data/models/product_model.dart';
import 'package:online_shop/app/global_widgets/image_with_buttons.dart';
import 'package:online_shop/app/utils/styles.dart';

class CardProduct extends StatelessWidget {
  const CardProduct({
    Key? key,
    required  this.index,
    required  this.product,
    required  this.isFirstElement,
    required  this.onPressed,
    required  this.goToDetails,
  }) : super(key: key);

  final int index;
  final Product product;
  final bool isFirstElement;
  final void Function () onPressed;
  final void Function () goToDetails;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: goToDetails,
      child: Container(
          padding: isFirstElement ? const EdgeInsets.only(left: 24, top: 8, bottom: 0) : const EdgeInsets.only(right: 24, top: 8, bottom: 0),
          width: 150,
          child: Column(
            children: [
              if(!isFirstElement)
                const SizedBox(height: 24,),
              Hero(
                tag: "ImageTag${index}",
                child: Material(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(16.0),
                    child: ImageWithButtons(
                      image: product.image,
                      width: 160,
                      height: 200,
                      like: product.like,
                      onPressed: onPressed,
                    ),
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.only(left: 12, top: 8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(product.name, style: styleBlack18,),
                    const SizedBox(height: 8,),
                    Text("\$"+product.price.toStringAsFixed(2), style: styleOrangeBold18,),
                  ],
                ),
              ),
            ],
          )
      ),
    );
  }
}