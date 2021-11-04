import 'package:get/get.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:online_shop/app/data/models/product_model.dart';
import 'package:online_shop/app/data/services/product_service.dart';
import 'package:online_shop/app/routes/app_pages.dart';

class HomeController extends GetxController {
  final ProductService _productService=ProductService();
  static const _pageSize = 18;
  final PagingController<int, Product> pagingController = PagingController(firstPageKey: 0);
  final List<String> listFiltre=["All", "Category", "Top", "Recommended"];
  RxInt selectedFiltre=0.obs;
  Rx<Product>? clickedProduct;

  @override
  void onInit() {
    pagingController.addPageRequestListener((pageKey) {
      _fetchPage(pageKey);
    });
    super.onInit();
  }

  Future<void> _fetchPage(int pageKey) async {
    try {
      final newItems = await _productService.getProducts(pageKey, _pageSize);
      final isLastPage = newItems.length < _pageSize;
      if (isLastPage) {
        pagingController.appendLastPage(newItems);
      } else {
        final int nextPageKey = pageKey+ newItems.length as int;
        pagingController.appendPage(newItems, nextPageKey);
      }
    } catch (error) {
      pagingController.error = error;
    }
  }

  void onChangeFiltre(index){
    selectedFiltre.value= index;
  }

  void onClickLike({int? index, String? name}){
    if(index!= null){
      pagingController.itemList![index].like.value=!pagingController.itemList![index].like.value;
    }else{
      Product p= pagingController.itemList!.firstWhere((element) => element.name == name);
      p.like.value= !p.like.value;
    }
  }

  void goToDetails(index){
    clickedProduct=pagingController.itemList![index].obs;
    Get.toNamed(Routes.PRODUCT_DETAILS, arguments: [{"tag" : "ImageTag${index}"},]);
  }
}
