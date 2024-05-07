import 'package:blackbird_books/model/product_model.dart';
import 'package:flutter/material.dart';

class ProductController with ChangeNotifier {
  final List<ProductModel> _products = [];

  List<ProductModel> get products => _products;
}
