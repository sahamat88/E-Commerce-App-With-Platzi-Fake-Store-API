import 'package:e_commerce_app/const/utils.dart';
import 'package:e_commerce_app/model/product_model.dart';
import 'package:e_commerce_app/services/api_hendler.dart';
import 'package:e_commerce_app/widget/product_display_grid_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomeProductWidget extends StatefulWidget {
  const HomeProductWidget({super.key});

  @override
  State<HomeProductWidget> createState() => _HomeProductWidgetState();
}

class _HomeProductWidgetState extends State<HomeProductWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        child: FutureBuilder<List<ProductModel>>(
          future: APIHandler.getAllproduct(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Utils.spinkit;
            } else if (snapshot.hasError) {
              return Center(
                child: Text('An error occurrd ${snapshot.error}'),
              );
            } else if (snapshot.data == null) {
              return const Center(
                child: Text('No product Added yet'),
              );
            }
            return ProductDisplayGridView(productList: snapshot.data!);
          },
        ));
    
  }
}
