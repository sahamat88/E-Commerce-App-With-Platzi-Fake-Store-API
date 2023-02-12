import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class OnBoardingPageThree extends StatelessWidget {
  const OnBoardingPageThree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
              flex: 2,
              child: Stack(
                children: [
                  Positioned(
                      top: 10,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Florals?',
                            style: TextStyle(
                                fontSize: 50, fontWeight: FontWeight.w900),
                          ),
                          Text(
                            'For Spring?',
                            style: TextStyle(
                                fontSize: 45, fontWeight: FontWeight.w700),
                          ),
                          Text(
                            'Groundbreaking.',
                            style: TextStyle(
                                fontSize: 40, fontWeight: FontWeight.w800),
                          )
                        ],
                      )),
                  Positioned(
                      bottom: 0,
                      child: Image.asset(
                        'assets/images/1.png',
                        fit: BoxFit.cover,
                        width: 500,
                      )),
                ],
              )),
        ],
      ),
    );
  }
}
