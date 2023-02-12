import 'package:e_commerce_app/model/categories_model.dart';
import 'package:e_commerce_app/model/categories_widget_model.dart';
import 'package:e_commerce_app/model/product_model.dart';
import 'package:e_commerce_app/route/route_name.dart';
import 'package:e_commerce_app/screen/product_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';

class CategoriesWidget extends StatefulWidget {
  const CategoriesWidget({
    super.key,
  });

  @override
  State<CategoriesWidget> createState() => _CategoriesWidgetState();
}

class _CategoriesWidgetState extends State<CategoriesWidget> {
  @override
  Widget build(BuildContext context) {
    final categoriesListProvider = Provider.of<CategoriesModel>(context);
    return InkWell(
        onTap: () {
          Navigator.pushNamed(context, RouteName.ProductPage, arguments: {
            'id': categoriesListProvider.id.toString(),
            'catName': categoriesListProvider.name.toString()
          });
        },
        child: ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                        categoriesListProvider.image.toString(),
                      ),
                      fit: BoxFit.cover),
                ),
              ),
              Positioned(
                bottom: 0,
                left: -50,
                right: -50,
                child: Container(
                  height: 50,
                  color: Colors.black,
                  child: Center(
                    child: Text(
                      categoriesListProvider.name.toString(),
                      style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
