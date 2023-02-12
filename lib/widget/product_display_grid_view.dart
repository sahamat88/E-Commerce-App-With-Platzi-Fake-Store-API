import 'package:e_commerce_app/const/utils.dart';
import 'package:e_commerce_app/model/product_model.dart';
import 'package:e_commerce_app/widget/tab_view_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';

class ProductDisplayGridView extends StatelessWidget {
  const ProductDisplayGridView({super.key, required this.productList});
  final List<ProductModel> productList;
  @override
  Widget build(BuildContext context) {
    return productList.isEmpty
        ? Utils.spinkit
        : Container(
        
            height: 300,
            child: GridView.builder(
                scrollDirection: Axis.horizontal,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  mainAxisExtent: 200,
                  crossAxisCount: 1,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                ),
                itemCount: productList.length,
                itemBuilder: (BuildContext ctx, index) {
                  return ChangeNotifierProvider.value(
                    value: productList[index],
                    child: const TabViewWidget(),
                  );
                }),
          );
  }
}
