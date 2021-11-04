import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:online_shop/app/data/models/product_model.dart';
import 'package:online_shop/app/global_widgets/custom_input.dart';
import 'package:online_shop/app/global_widgets/custom_scaffold.dart';
import 'package:online_shop/app/global_widgets/rounded_container.dart';
import 'package:online_shop/app/modules/home/views/card_filter.dart';
import 'package:online_shop/app/modules/home/views/card_product.dart';
import 'package:online_shop/app/utils/colors.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  final ScrollController scrollController= ScrollController();
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        title: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                  child:
                  CustomInput(
                    controller: TextEditingController(),
                    hintText: "Find your product",
                    prefixIcon: const Icon(Icons.search, color: grey800,),
                  )
              ),
              const SizedBox(width: 16,),
              const RoundedContainer(
                  height: 60,
                  width: 60,
                  child: IconButton(
                      onPressed: null,
                      icon: Icon(Icons.notifications_none_rounded, color: grey800,)
                  )
              )
            ],
          ),
        ),
      ),
      body: CustomScrollView(
        controller: scrollController,
        slivers: <Widget>[
          SliverAppBar(
            toolbarHeight: 170,
            backgroundColor: white,
            pinned: false,snap: true,floating: true,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                'assets/images/freeShipping.png',
                  fit:BoxFit.contain
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(top: 16, left: 16),
              child: Container(
                height: 70,
                child: ListView.builder(
                  itemCount: controller.listFiltre.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Obx(() {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: CardFiltre(label: controller.listFiltre[index], isSelected: controller.selectedFiltre == index, onChangeFilter: ()=>controller.onChangeFiltre(index)),
                        );
                      }
                    );
                  },
                ),
              ),
            ),
          ),
          PagedSliverGrid<int, Product>(
            pagingController: controller.pagingController,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              childAspectRatio: 160/240,
              crossAxisCount: 2,
            ),
            builderDelegate: PagedChildBuilderDelegate<Product>(
              itemBuilder: (context, item, index) =>
              CardProduct(product: item, isFirstElement: index.isEven, onPressed: ()=>controller.onClickLike(index: index), goToDetails: ()=> controller.goToDetails(index), index: index,),
            ),
          )
        ],
      ),
    );
  }
}

