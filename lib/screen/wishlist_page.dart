import 'package:e_commerce_app/route/route_name.dart';
import 'package:e_commerce_app/widget/page_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class WishListPage extends StatelessWidget {
  const WishListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          PageAppBar(pageTitle: 'Wish List'),
          ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, RouteName.CartPage, arguments: {
                  'name': 'Hisam'
                });
              },
              child: Text('NextPage'))
        ],
      )),
    );
  }
}
