import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:meta/meta.dart';
import 'dart:convert';

Product productFromJson(String str) => Product.fromJson(json.decode(str));

class Product {
  Product({
    required this.name,
    required this.subName,
    required this.price,
    required this.image,
    required this.like,
    required this.description,
  });

  final String name;
  final double price;
  final String image;
  final String subName;
  final String description;
  RxBool like;

  factory Product.fromJson(Map<String, dynamic> json) => Product(
    name: json["name"],
    subName: json["subName"],
    description: json["description"],
    price: json["price"],
    image: json["image"],
    like: json["like"].obs,
  );

}
