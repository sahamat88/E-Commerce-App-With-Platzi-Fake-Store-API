import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        height: 70,
        width: double.infinity,
        color: Colors.black,
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Image.asset(
            'assets/images/logo.png',
            width: 200,
          ),
          Row(children: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.search,
                  color: Colors.white,
                )),
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.notifications_active,
                  color: Colors.white,
                ))
          ])
        ]));
  }
}
