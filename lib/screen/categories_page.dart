import 'package:e_commerce_app/const/utils.dart';
import 'package:e_commerce_app/model/categories_model.dart';
import 'package:e_commerce_app/model/categories_widget_model.dart';
import 'package:e_commerce_app/services/api_hendler.dart';
import 'package:e_commerce_app/widget/categories_widget.dart';
import 'package:e_commerce_app/widget/page_app_bar.dart';
import 'package:e_commerce_app/widget/tab_view_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:provider/provider.dart';

class CategoriesPage extends StatelessWidget {
  const CategoriesPage({super.key});



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          const PageAppBar(
            pageTitle: 'Categories',
          ),
          Expanded(
            child: FutureBuilder<List<CategoriesModel>>(
              future: APIHandler.getAllcategories(),
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
                return GridView.builder(
                    scrollDirection: Axis.vertical,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      mainAxisExtent: 220,
                      crossAxisCount: 2,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                    ),
                    itemCount: snapshot.data!.length,
                    itemBuilder: (BuildContext ctx, index) {
                      return ChangeNotifierProvider.value(
                          value: snapshot.data![index],
                          child: CategoriesWidget());
                    });
              },
            ),
          )
        ],
      )),
    );
  }
}
