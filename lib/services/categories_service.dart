// ignore_for_file: missing_required_param

import 'package:store/models/prodect_model.dart';
import '../helper/api.dart';

class CategoriesService {
  Future<List<ProductModel>> getAllOfProduct(
      {required String categoryName}) async {
    List<dynamic> data = await Api()
        .get(url: 'https://fakestoreapi.com/products/category/$categoryName');
    List<ProductModel> products = [];
    for (var item in data) {
      products.add(
        ProductModel.fromJson(item),
      );
    }
    return products;
  }
}
