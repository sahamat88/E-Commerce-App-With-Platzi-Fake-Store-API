import 'package:e_commerce_app/const/utils.dart';
import 'package:e_commerce_app/model/categories_model.dart';
import 'package:e_commerce_app/model/product_model.dart';
import 'package:e_commerce_app/widget/tab_view_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:provider/provider.dart';

class ProductWidgetByCategories extends StatelessWidget {
  const ProductWidgetByCategories({super.key, required this.productList});

  final List<ProductModel> productList;
  @override
  Widget build(BuildContext context) {
    return productList.isEmpty
        ? Center(child: Utils.spinkit)
        : Container(
            height: 300,
            child: GridView.builder(
                scrollDirection: Axis.vertical,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  mainAxisExtent: 300,
                  crossAxisCount: 2,
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
