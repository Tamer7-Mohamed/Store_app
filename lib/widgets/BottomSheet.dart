// ignore_for_file: sized_box_for_whitespace, file_names, must_be_immutable

import 'package:flutter/material.dart';
import 'package:store/Screens/UpdateProductPage.dart';

import '../Screens/Categories.dart';
import '../models/prodect_model.dart';

class ProductBottomSheet extends StatelessWidget {
  ProductBottomSheet({
    required this.product,
    Key? key,
  }) : super(key: key);
  ProductModel product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 300,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(.1),
                    borderRadius: BorderRadius.circular(15)),
                child: MaterialButton(
                  onPressed: () => {
                    Navigator.pushNamed(context, Categories.id,
                        arguments: product)
                  },
                  child: const Text('Categories Product'),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(.1),
                    borderRadius: BorderRadius.circular(15)),
                child: MaterialButton(
                  onPressed: () => {
                    Navigator.pushNamed(context, UpdateProductPage.id,
                        arguments: product),
                  },
                  child: const Text('Update Product'),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
