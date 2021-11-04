import 'dart:math';

import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:online_shop/app/data/models/product_model.dart';

class ProductService{
  Future<List<Product>> getProducts(int pageKey, int pageSize) async {
    await Future.delayed(const Duration(seconds: 2));
    List<Product> list=[];
    var rng = Random();

    list.add(Product(name: "Warm Zipper ",subName: "Hooded Jacket", description: "Nihil morati post haec militares avidi saepe turbarum adorti sunt Montium primum, qui divertebat in proximo, levi corpore senem atque morbosum, et hirsutis resticulis cruribus eius innexis divaricaturn sine spiramento ullo ad usque praetorium traxere praefecti.", price: 300, image: "assets/images/clothes/img1.jpg", like: true.obs));
    list.add(Product(name: "Knitted Wool",subName: "Hooded Jacket", description: "Nihil morati post haec militares avidi saepe turbarum adorti sunt Montium primum, qui divertebat in proximo, levi corpore senem atque morbosum, et hirsutis resticulis cruribus eius innexis divaricaturn sine spiramento ullo ad usque praetorium traxere praefecti.", price: 125, image: "assets/images/clothes/img2.jpg", like: true.obs));
    for(int i=3 ; i<19 ; i++){
      list.add(Product(name: "product${i}",subName: "Hooded Jacket", description: "Nihil morati post haec militares avidi saepe turbarum adorti sunt Montium primum, qui divertebat in proximo, levi corpore senem atque morbosum, et hirsutis resticulis cruribus eius innexis divaricaturn sine spiramento ullo ad usque praetorium traxere praefecti.", price: rng.nextInt(100).toDouble(), image: "assets/images/clothes/img${i}.jpg", like: true.obs));
    }

    return list;
  }
}