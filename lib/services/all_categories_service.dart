// ignore_for_file: missing_required_param

import '../helper/api.dart';

class AllCategoriesService {
  Future<List<dynamic>> getAllOfProduct() async {
    List<dynamic> data =
        await Api().get(url: 'https://fakestoreapi.com/products/categories');

    return data;
  }
}
