import 'package:e_commerce_app/model/categories_model.dart';
import 'package:flutter/cupertino.dart';

class ProductModel with ChangeNotifier {
  int? id;
  String? title;
  int? price;
  String? description;
  List<String>? images;
  String? creationAt;
  String? updatedAt;
  CategoriesModel? category;

  ProductModel(
      {this.id,
      this.title,
      this.price,
      this.description,
      this.images,
      this.creationAt,
      this.updatedAt,
      this.category});

  ProductModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    price = json['price'];
    description = json['description'];
    images = json['images'].cast<String>();
    creationAt = json['creationAt'];
    updatedAt = json['updatedAt'];
    category = json['category'] != null
        ? new CategoriesModel.fromJson(json['category'])
        : null;
  }

  static List<ProductModel> productFormSnapshot(List prodcutSnapshot) {
    return prodcutSnapshot.map((data) {
      return ProductModel.fromJson(data);
    }).toList();
  }
}
