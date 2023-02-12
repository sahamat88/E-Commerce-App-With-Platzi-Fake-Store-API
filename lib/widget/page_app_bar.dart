import 'package:e_commerce_app/route/route_name.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class PageAppBar extends StatelessWidget {
  const PageAppBar({
    super.key,
    required this.pageTitle,
  });

  final String pageTitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      height: 70,
      width: double.infinity,
      color: Colors.black,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: const Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                width: 5,
              ),
              Text(
                pageTitle,
                style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ],
          ),
          InkWell(
            onTap: () {},
            child: const Icon(
              Icons.notifications,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
