import 'package:flutter/material.dart';
import 'package:ui1/icons/custom_icons_icons.dart';
import 'package:ui1/screen2/screen_two_account.dart';
import 'package:ui1/screen2/screen_two_home.dart';
import 'package:ui1/screen2/screen_two_manage.dart';
import 'package:ui1/screen2/screen_two_order.dart';
import 'package:ui1/screen2/screen_two_products.dart';

class ScreenTwo extends StatefulWidget {
  const ScreenTwo({super.key});

  @override
  State<ScreenTwo> createState() => _ScreenTwoState();
}

class _ScreenTwoState extends State<ScreenTwo> {
  int _currentSelectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    final pages = [
      const ScreenTwoHome(),
      const ScreenTwoOrder(),
      const ScreenTwoProducts(),
      const ScreenTwoManage(),
      const ScreenTwoAccount()
    ];
    return Scaffold(
      body: pages[_currentSelectedIndex],
      bottomNavigationBar: BottomNavigationBar(
          showUnselectedLabels: true,
          unselectedLabelStyle:
              const TextStyle(color: Colors.grey, fontSize: 14),
          fixedColor: Colors.blue,
          unselectedItemColor: Colors.grey,
          currentIndex: _currentSelectedIndex,
          onTap: (newIndex) {
            setState(() {
              _currentSelectedIndex = newIndex;
            });
          },
          items: const [
            BottomNavigationBarItem(
                icon: Icon(
                  CustomIcons.home,
                ),
                label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(
                  CustomIcons.clipboard_list,
                ),
                label: 'Orders'),
            BottomNavigationBarItem(
                icon: Icon(
                  CustomIcons.th_large_outline,
                ),
                label: 'Products'),
            BottomNavigationBarItem(
                icon: Icon(
                  CustomIcons.layers,
                ),
                label: 'Manage'),
            BottomNavigationBarItem(
                icon: Icon(
                  CustomIcons.person_outline,
                ),
                label: 'Account')
          ]),
    );
  }
}
