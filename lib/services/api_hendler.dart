import 'dart:convert';

import 'package:e_commerce_app/const/api_const.dart';
import 'package:e_commerce_app/model/categories_model.dart';
import 'package:e_commerce_app/model/product_model.dart';
import 'package:http/http.dart' as http;

class APIHandler {
  static Future<List<dynamic>> getData({String? target}) async {
    List tempList = [];
    var uri = Uri.https(BaseUrl, 'api/v1/$target');

    var response = await http.get(uri);
    var data = jsonDecode(response.body);
    print(data);
    for (var i in data) {
      tempList.add(i);
    }
    return tempList;
  }

  static Future<List<ProductModel>> getAllproduct() async {
    List temp = await getData(target: 'products');
    return ProductModel.productFormSnapshot(temp);
  }

  static Future<List<CategoriesModel>> getAllcategories() async {
    List temp = await getData(target: 'categories');

    return CategoriesModel.categoriesFormSnapshot(temp);
  }

  static Future<List<ProductModel>> getProductByCategoriesId({
    String? id,
  }) async {
    List temp = await getData(target: 'categories/$id/products');

    return ProductModel.productFormSnapshot(temp);
  }
}
