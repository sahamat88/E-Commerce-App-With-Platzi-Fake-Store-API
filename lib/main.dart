import 'package:e_commerce_app/model/product_model.dart';
import 'package:e_commerce_app/oneboarding_page/onboarding_page.dart';
import 'package:e_commerce_app/oneboarding_page/onboarding_page_one.dart';
import 'package:e_commerce_app/screen/acoount_page.dart';
import 'package:e_commerce_app/screen/bottom_nav_page.dart';
import 'package:e_commerce_app/screen/cart_page.dart';
import 'package:e_commerce_app/screen/home_page.dart';
import 'package:e_commerce_app/screen/wishlist_page.dart';
import 'package:e_commerce_app/route/route.dart';
import 'package:e_commerce_app/route/route_name.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => ProductModel(),
        ),
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: RouteName.OnBoardingPage,
        onGenerateRoute: Routes.generateRoute,
      ),
    );
    //
  }
}
