import 'package:e_commerce_app/oneboarding_page/onboarding_page_one.dart';
import 'package:e_commerce_app/oneboarding_page/onboarding_page_three.dart';
import 'package:e_commerce_app/oneboarding_page/onboarding_page_two.dart';
import 'package:e_commerce_app/screen/bottom_nav_page.dart';
import 'package:e_commerce_app/screen/home_page.dart';
import 'package:e_commerce_app/route/route_name.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({super.key});

  @override
  State<OnBoardingPage> createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  bool onLastPage = false;
  final PageController _pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Column(
        children: [
          Expanded(
            flex: 6,
            child: Stack(
              children: [
                PageView(
                  onPageChanged: (int index) {
                    setState(() {
                      onLastPage = (index == 2);
                    });
                  },
                  controller: _pageController,
                  children: [
                    OnBoardingPageOne(),
                    OnBoardingPageTwo(),
                    OnBoardingPageThree(),
                  ],
                ),
                Positioned(
                    right: 15,
                    top: 10,
                    child: SmoothPageIndicator(
                        effect: const SlideEffect(
                            spacing: 8.0,
                            radius: 4.0,
                            dotWidth: 24.0,
                            dotHeight: 16.0,
                            paintStyle: PaintingStyle.stroke,
                            strokeWidth: 1.5,
                            dotColor: Colors.grey,
                            activeDotColor: Colors.black),
                        controller: _pageController,
                        count: 3))
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: onLastPage
                ? InkWell(
                    onTap: () {
                      Navigator.pushReplacementNamed(
                          context, RouteName.BottomNavPage);
                    },
                    child: Container(
                        padding: const EdgeInsets.only(
                            left: 30, right: 30, top: 20, bottom: 20),
                        height: 100,
                        width: double.infinity,
                        decoration: const BoxDecoration(
                            color: Colors.white,
                            border: Border(
                                top: BorderSide(width: 2, color: Colors.grey))),
                        child: Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(15)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Done',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        )),
                  )
                : InkWell(
                    onTap: () {
                      _pageController.nextPage(
                          duration: Duration(milliseconds: 500),
                          curve: Curves.linear);
                    },
                    child: Container(
                        padding: EdgeInsets.only(
                            left: 30, right: 30, top: 20, bottom: 20),
                        height: 100,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border(
                                top: BorderSide(width: 2, color: Colors.grey))),
                        child: Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(15)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Get Started',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                              Icon(
                                Icons.arrow_right_alt,
                                color: Colors.white,
                              )
                            ],
                          ),
                        )),
                  ),
          )
        ],
      )),
    );
  }
}
