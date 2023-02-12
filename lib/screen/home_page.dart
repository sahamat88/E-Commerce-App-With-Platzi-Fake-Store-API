import 'package:carousel_slider/carousel_slider.dart';
import 'package:e_commerce_app/model/categories_widget_model.dart';
import 'package:e_commerce_app/model/product_model.dart';
import 'package:e_commerce_app/screen/cart_page.dart';
import 'package:e_commerce_app/screen/wishlist_page.dart';
import 'package:e_commerce_app/route/route_name.dart';
import 'package:e_commerce_app/services/api_hendler.dart';
import 'package:e_commerce_app/widget/home_product_widget.dart.dart';
import 'package:e_commerce_app/widget/carousel_slider.dart';
import 'package:e_commerce_app/widget/categories_widget.dart';
import 'package:e_commerce_app/widget/custom_app_bar.dart';
import 'package:e_commerce_app/widget/home_category_widget.dart';
import 'package:e_commerce_app/widget/product_display_grid_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<CategoriesWidgetModel> getCatData = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            const CustomAppBar(),
            const CarouselImages(),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Categories',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, RouteName.CategoriesPage);
                    },
                    child: const Icon(Icons.arrow_forward_ios))
              ],
            ),
           const HomeCategoriesWidget(),
            const HomeProductWidget()
          ],
        ),
      ),
    ));
  }
}
