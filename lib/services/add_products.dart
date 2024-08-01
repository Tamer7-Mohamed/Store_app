// ignore_for_file: missing_required_param

import 'package:store/helper/api.dart';
import 'package:store/models/prodect_model.dart';

class AddProducts {
  Future<ProductModel> addproducts({
    required String title,
    required String price,
    required String description,
    required String image,
    required String category,
  }) async {
    Map<String, dynamic> data = await Api().post(
      url: 'https://fakestoreapi.com/products',
      body: {
        'title': title,
        'price': price,
        'description': description,
        'image': image,
        'category': category,
      },
    );
    return ProductModel.fromJson(data);
  }
}
