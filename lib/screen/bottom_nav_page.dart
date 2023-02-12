import 'package:e_commerce_app/services/api_hendler.dart';
import 'package:e_commerce_app/screen/acoount_page.dart';
import 'package:e_commerce_app/screen/cart_page.dart';
import 'package:e_commerce_app/screen/home_page.dart';
import 'package:e_commerce_app/screen/wishlist_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class BottomNavPage extends StatefulWidget {
  const BottomNavPage({super.key});

  @override
  State<BottomNavPage> createState() => _BottomNavPageState();
}

class _BottomNavPageState extends State<BottomNavPage> {
  int _selectedIndex = 0;

  final List<Map<String, dynamic>> _pages = [
    {'page': const HomePage(), 'title': 'HomePage'},
    {'page': const WishListPage(), 'title': 'Wish List'},
    {'page': const CartPage(), 'title': 'Cart'},
    {'page': const AccountPage(), 'title': 'Account'}
  ];
  void _nevigateBottomNav(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: _pages[_selectedIndex]['page'],
      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white,
          unselectedLabelStyle: const TextStyle(
              fontWeight: FontWeight.w500, fontSize: 14, letterSpacing: 1.5),
          backgroundColor: Colors.black,
          iconSize: 30,
          selectedFontSize: 15,
          selectedLabelStyle:const TextStyle(fontWeight: FontWeight.bold),
          type: BottomNavigationBarType.fixed,
          currentIndex: _selectedIndex,
          onTap: _nevigateBottomNav,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              backgroundColor: Colors.white,
              label: 'Home',
              icon: Icon(
                _selectedIndex == 0 ? Icons.home : Icons.home_outlined,
                color: Colors.white,
              ),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                _selectedIndex == 1 ? Icons.favorite : Icons.favorite_outline,
                color: Colors.white,
              ),
              label: 'Wish List',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                _selectedIndex == 2
                    ? Icons.shopping_bag
                    : Icons.shopping_bag_outlined,
                color: Colors.white,
              ),
              label: 'Cart',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                _selectedIndex == 3 ? Icons.person : Icons.person_outline,
                color: Colors.white,
              ),
              label: 'Profile',
            ),
          ]),
    ));
  }
}
