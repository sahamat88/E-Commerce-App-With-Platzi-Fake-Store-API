import 'package:e_commerce_app/const/utils.dart';
import 'package:e_commerce_app/model/categories_model.dart';
import 'package:e_commerce_app/services/api_hendler.dart';
import 'package:e_commerce_app/widget/categories_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:provider/provider.dart';

class HomeCategoriesWidget extends StatelessWidget {
  const HomeCategoriesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
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
              scrollDirection: Axis.horizontal,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                mainAxisExtent: 150,
                crossAxisCount: 1,
                crossAxisSpacing: 15,
                mainAxisSpacing: 30,
              ),
              itemCount: snapshot.data!.length,
              itemBuilder: (BuildContext ctx, index) {
                return ChangeNotifierProvider.value(
                    value: snapshot.data![index],
                    child: const CategoriesWidget());
              });
        },
      ),
    );
  }
}
