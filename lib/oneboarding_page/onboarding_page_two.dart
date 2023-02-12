import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class OnBoardingPageTwo extends StatelessWidget {
  const OnBoardingPageTwo({super.key});

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
                            'Define ',
                            style: TextStyle(
                                fontSize: 50, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'yourself in',
                            style: TextStyle(
                                fontSize: 45, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'unique way.',
                            style: TextStyle(
                                fontSize: 40, fontWeight: FontWeight.bold),
                          )
                        ],
                      )),
                  Positioned(
                      bottom: 0,
                      child: Image.asset(
                        'assets/images/3.png',
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
