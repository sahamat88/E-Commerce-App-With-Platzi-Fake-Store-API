import 'package:e_commerce_app/oneboarding_page/onboarding_page.dart';
import 'package:e_commerce_app/screen/acoount_page.dart';
import 'package:e_commerce_app/screen/bottom_nav_page.dart';
import 'package:e_commerce_app/screen/cart_page.dart';
import 'package:e_commerce_app/screen/categories_page.dart';
import 'package:e_commerce_app/screen/home_page.dart';
import 'package:e_commerce_app/screen/product_page.dart';
import 'package:e_commerce_app/screen/wishlist_page.dart';
import 'package:e_commerce_app/route/route_name.dart';
import 'package:flutter/material.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteName.HomePage:
        return MaterialPageRoute(builder: (context) => const HomePage());
      case RouteName.CartPage:
        return MaterialPageRoute(builder: (context) => const CartPage());
      case RouteName.WishList:
        return MaterialPageRoute(builder: (context) => const WishListPage());
      case RouteName.AccountPage:
        return MaterialPageRoute(builder: (context) => const AccountPage());
      case RouteName.OnBoardingPage:
        return MaterialPageRoute(builder: (context) => const OnBoardingPage());
      case RouteName.BottomNavPage:
        return MaterialPageRoute(builder: (context) => const BottomNavPage());
      case RouteName.CategoriesPage:
        return MaterialPageRoute(builder: (context) => const CategoriesPage());
      case RouteName.ProductPage:
        return MaterialPageRoute(builder: (context) =>  ProductPage(data: settings.arguments as Map));
      default:
        return MaterialPageRoute(builder: (context) {
          return const Scaffold(
            body: Center(child: Text('No Rout Define')),
          );
        });
    }
  }
}
