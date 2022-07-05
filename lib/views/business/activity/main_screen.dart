import 'package:flutter/material.dart';
import 'package:jewelery_marketplace/views/business/activity/business_home_screen.dart';
import 'package:jewelery_marketplace/views/business/activity/business_wishlist_screen.dart';
import 'package:jewelery_marketplace/views/business/profile/business_profile_screen.dart';
import 'package:jewelery_marketplace/views/business/store/jewelry_store_screen.dart';
import 'package:jewelery_marketplace/views/user/personalProfile.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int currentIndex = 0;
  final List<Widget> children = [
    BusinessHomeScreen(),
    StoreScreen(),
    BusinessProfileScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: children[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black38,
        currentIndex: currentIndex,
        iconSize: 30,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: ''),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_bag_outlined), label: ''),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_outline_outlined), label: ''),
        ],
      ),
    );
  }
}
