import 'package:e_commerce_app/widget/page_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          PageAppBar(pageTitle: 'Account'),
          CircleAvatar(
              backgroundColor: Colors.black,
              radius: 100,
              child: Image.asset(
                'assets/images/logo.png',
                width: 150,
              )),
          Row(
            children: const [
              Icon(Icons.person),
              SizedBox(
                width: 5,
              ),
              Text('Rad Shahamat Hisam',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
            ],
          ),
          Row(
            children: const [
              Icon(Icons.email),
              SizedBox(
                width: 5,
              ),
              Text('sahamat72@gmail.com',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
            ],
          ),
          Row(
            children: const [
              Icon(Icons.call),
              SizedBox(
                width: 5,
              ),
              Text('+8801631882708',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
            ],
          ),
          Row(
            children: const [
              Icon(Icons.location_on),
              SizedBox(
                width: 5,
              ),
              Text('14/2 South Boundary Road, Dhaka',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
            ],
          )
        ],
      )),
    );
  }
}
