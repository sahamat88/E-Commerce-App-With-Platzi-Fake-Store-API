import 'package:e_commerce_app/const/utils.dart';
import 'package:e_commerce_app/model/categories_model.dart';
import 'package:e_commerce_app/model/product_model.dart';
import 'package:e_commerce_app/services/api_hendler.dart';
import 'package:e_commerce_app/widget/categories_widget.dart';
import 'package:e_commerce_app/widget/page_app_bar.dart';
import 'package:e_commerce_app/widget/product_display_grid_view.dart';
import 'package:e_commerce_app/widget/product_widget_by_categories.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({super.key, required this.data});
  final dynamic data;
  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            PageAppBar(pageTitle: widget.data['catName'].toString()),
            Expanded(
              child: FutureBuilder<List<ProductModel>>(
                future:
                    APIHandler.getProductByCategoriesId(id: widget.data['id']),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return Center(child: Utils.spinkit);
                  } else if (snapshot.hasError) {
                    return Center(
                      child: Text('An error occurrd ${snapshot.error}'),
                    );
                  } else if (snapshot.data == null) {
                    return const Center(
                      child: Text('No product Added yet'),
                    );
                  }
                  return ProductWidgetByCategories(productList: snapshot.data!);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
