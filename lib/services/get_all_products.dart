// ignore_for_file: missing_required_param

import 'package:store/helper/api.dart';

import '../models/prodect_model.dart';

class AllProductsService {
  Future<List<ProductModel>> getAllProducts() async {
    List<dynamic> data = await Api().get(
      url: 'https://fakestoreapi.com/products',
    );

    List<ProductModel> productsList = [];
    for (int i = 0; i < data.length; i++) {
      productsList.add(
        ProductModel.fromJson(data[i]),
      );
    }
    return productsList;
  }
}
