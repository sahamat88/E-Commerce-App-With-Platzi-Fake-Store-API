import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CarouselImages extends StatefulWidget {
  const CarouselImages({super.key});

  @override
  State<CarouselImages> createState() => _CarouselImagesState();
}

class _CarouselImagesState extends State<CarouselImages> {
  final List<String> _carouselImages = [
    'assets/images/slider1.jpg',
    'assets/images/slider2.jpg',
    'assets/images/slider3.jpg'
  ];

  var _dotPosition = 0;

  @override
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CarouselSlider(
            items: _carouselImages
                .map((item) => Padding(
                      padding: const EdgeInsets.only(left: 3, right: 3),
                      child: Container(
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(item), fit: BoxFit.fitWidth)),
                      ),
                    ))
                .toList(),
            options: CarouselOptions(
                autoPlay: false,
                enlargeCenterPage: true,
                height: 200,
                viewportFraction: 1,
                enlargeStrategy: CenterPageEnlargeStrategy.height,
                onPageChanged: (val, carouselPageChangedReason) {
                  setState(() {
                    _dotPosition = val;
                  });
                })),
        const SizedBox(
          height: 10,
        ),
        Positioned(
          bottom: 20,
          left: 20,
          right: 20,
          child: DotsIndicator(
            dotsCount: _carouselImages.length == 0 ? 1 : _carouselImages.length,
            position: _dotPosition.toDouble(),
            decorator: const DotsDecorator(
              activeColor: Colors.black,
              color: Colors.white,
              spacing: EdgeInsets.all(10),
              activeSize: Size(10, 10),
              size: Size(8, 8),
            ),
          ),
        ),
      ],
    );
  }
}
