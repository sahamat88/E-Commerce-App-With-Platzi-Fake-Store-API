import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class OnBoardingPageOne extends StatelessWidget {
  const OnBoardingPageOne({super.key});



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
              top: 10,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'The Joy',
                    style: TextStyle(fontSize: 50, fontWeight: FontWeight.w400),
                  ),
                  Text(
                    'of',
                    style: TextStyle(fontSize: 45, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'dressing is an art.',
                    style: TextStyle(fontSize: 40, fontWeight: FontWeight.w400),
                  )
                ],
              )),
          Positioned(
              bottom: 0,
              child: Image.asset(
                'assets/images/2.png',
                fit: BoxFit.cover,
                width: 500,
              )),
        ],
      ),
    );
  }
}
